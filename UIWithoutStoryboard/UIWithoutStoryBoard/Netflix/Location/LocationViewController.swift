//
//  LocationViewController.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/21.
//

import UIKit

class LocationViewController: BaseViewController {
    
    let mainView = LocationView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
    
    override func configure() {
        mainView.locationButton.addTarget(self, action: #selector(addressButtonClicked(_:)), for: .touchUpInside)
    }
    
    @objc func addressButtonClicked(_ sender: UIButton) {
        transionController(storyboard: "Main", vc: WebViewController(), transition: .push) { _ in
        }
    }
    
    
    
}
