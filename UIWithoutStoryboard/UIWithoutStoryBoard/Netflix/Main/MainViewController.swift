//
//  MainViewController.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/20.
//

import UIKit
import UIWithoutStoryboardFramework

class MainViewController: BaseViewController {
    
    let mainView = MainView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func configure() {
        mainView.likeImageButton.addTarget(self, action: #selector(likeButtonClicked(_:)), for: .touchUpInside)
    }
    
    @objc func likeButtonClicked(_ sender: UIButton) {
        transionController(storyboard: "Main", vc: LoginViewController(), transition: .present) { _ in
            
        }
    }
    
    
    
}
