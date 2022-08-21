//
//  LoginViewController.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/21.
//

import UIKit
import UIWithoutStoryboardFramework

class LoginViewController: BaseViewController {
    
    let mainView = LoginView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
//        NotificationCenter.default.addObserver(self, selector: #selector(searchLocationNotificationObserver(notification:)), name: .searchLocation, object: nil)
    }
    
    override func configure() {
        mainView.switchButton.addTarget(self, action: #selector(offClickedSwitch(_:)), for: .valueChanged)
        mainView.signButton.addTarget(self, action: #selector(signButtonClicked(_:)), for: .touchUpInside)
        mainView.locationButton.addTarget(self, action: #selector(locationButtonClicked(_:)), for: .touchUpInside)
        
    }
    
//    @objc func searchLocationNotificationObserver(notification: NSNotification) {
//        if let text = notification.userInfo?["location"] as? String {
//            self.mainView.locationButton.setTitle(text, for: .normal)
//        }
//    }
    
    @objc func locationButtonClicked(_ sender: UIButton) {
//        transionController(storyboard: "Main", vc: LocationViewController(), transition: .present) { _ in
//        }
        
        let vc = LocationViewController()
        vc.locationButtonActionHandler = { text in
            self.mainView.locationButton.setTitle(text, for: .normal)
        }
        let nv = UINavigationController(rootViewController: vc)
        nv.modalPresentationStyle = .fullScreen
        present(nv, animated: true)
    }
    
    @objc func offClickedSwitch(_ sender: UISwitch) {
        if sender.isOn {
            mainView.backgroundColor = .black
        } else {
            mainView.backgroundColor = .white
        }
    }
    
    @objc func signButtonClicked(_ sender: UIButton) {
        if mainView.emailPhoneTextField.text == "" || mainView.passWordTextField.text == "" {
            let alert = UIAlertController(title: "올바르지 않은 접근입니다", message: "이메일 주소 또는 전화번호와 패스워드를 다시 입력하십시오", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "되돌아가기", style: .destructive, handler: { _ in  }))
            present(alert, animated: true)
        } else if mainView.passWordTextField.text!.count < 6 {
            let alert = UIAlertController(title: "올바르지 않은 접근입니다", message: "비밀번호를 6자리 이상 입력해주세요", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "되돌아가기", style: .destructive, handler: { _ in  }))
            present(alert, animated: true)
        } else {
            transionController(storyboard: "Main", vc: MainViewController(), transition: .present) {_ in
            }
        }
        
    }
    
    
}
