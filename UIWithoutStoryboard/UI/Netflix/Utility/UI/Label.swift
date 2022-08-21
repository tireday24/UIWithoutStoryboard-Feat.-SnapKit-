//
//  MainTop.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/21.
//

import UIKit

class MainTopLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        textColor = .white
        font = UIFont(name: "AvenirNext-Heavy", size: 12)
        
    }
    
}

class MidLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        font = .systemFont(ofSize: 10)
        textAlignment = .center
        layer.borderColor = UIColor.white.cgColor
        textColor = .white
        
    }
}

class bottomLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        font = .boldSystemFont(ofSize: 15)
        textAlignment = .center
        layer.borderColor = UIColor.white.cgColor
        textColor = .white
        
    }
}
