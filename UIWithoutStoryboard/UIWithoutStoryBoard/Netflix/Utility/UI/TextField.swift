//
//  Button.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/21.
//

import UIKit

class LoginTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        textAlignment = .center
        textColor = .white
        tintColor = .white
        font = UIFont(name: "AvenirNext-DemiBold", size: 15)
        backgroundColor = .lightGray
        layer.borderWidth = 2
        layer.borderColor = UIColor.clear.cgColor
        layer.cornerRadius = 10
        clipsToBounds = true
    }
}

class JoinTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        textAlignment = .left
        textColor = .white
        font = .systemFont(ofSize: 15)
        backgroundColor = .lightGray
        
    }
}
