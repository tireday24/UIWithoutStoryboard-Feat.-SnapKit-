//
//  Button.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/21.
//

import UIKit

class LoginButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        backgroundColor = .lightGray
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.clear.cgColor
        clipsToBounds = true
    }
    
    
}
