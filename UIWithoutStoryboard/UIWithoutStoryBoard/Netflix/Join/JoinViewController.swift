//
//  Join.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/21.
//

import UIKit

class JoinViewController: BaseViewController {
    
    let mainView = JoinView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func configure() {
        mainView.rightNowButton.addTarget(self, action: #selector(rightButtonClicked(_:)), for: .touchUpInside)
    }
    
    @objc func rightButtonClicked(_ sender: UIButton) {
        transionController(storyboard: "Main", vc: LoginViewController(), transition: .present) { _ in
            
        }
    }
    
    
}
