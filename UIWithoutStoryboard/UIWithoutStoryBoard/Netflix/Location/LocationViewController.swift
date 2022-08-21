//
//  LocationViewController.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/21.
//

import UIKit

class LocationViewController: BaseViewController {
    
    //var searchLocationName = ""
    
    var locationButtonActionHandler: ((String) -> ())?
    
    let mainView = LocationView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        let navi = navigationItem
        navi.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "chevron.left"), style: .plain, target: self, action: #selector(leftButtonClicked))
        navi.rightBarButtonItem = UIBarButtonItem(title: "위치 입력", style: .plain, target: self, action: #selector(rightButtonClicked))
    }
    
    @objc func leftButtonClicked() {
        dismiss(animated: true)
    }
    
    @objc func rightButtonClicked() {
        
//        NotificationCenter.default.post(name: .searchLocation, object: nil, userInfo: ["location": searchLocationName])
//        print(searchLocationName, "ffffffffff")
        
        locationButtonActionHandler?(mainView.locationTextField.text ?? "연남동")
        
        dismiss(animated: true)
    }
    
    override func configure() {
        mainView.locationButton.addTarget(self, action: #selector(addressButtonClicked(_:)), for: .touchUpInside)
    }
    
    @objc func addressButtonClicked(_ sender: UIButton) {
        transionController(storyboard: "Main", vc: WebViewController(), transition: .push) { _ in
        }
    }
}

extension NSNotification.Name {
    static let searchLocation = NSNotification.Name("searchLocation")
}
