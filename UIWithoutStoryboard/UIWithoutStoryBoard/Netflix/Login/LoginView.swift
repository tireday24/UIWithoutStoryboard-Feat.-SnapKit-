//
//  LoginView.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/21.
//

import UIKit

import SnapKit
import Then

class LoginView: BaseView {
    
    let titleLabel = UILabel().then {
        $0.text = "NETFLIX"
        $0.textColor = .red
        $0.textAlignment = .center
        $0.font  = UIFont(name: "AvenirNext-Heavy", size: 60)
    }
    
    let emailPhoneTextField = LoginTextField().then {
        $0.placeholder = "이메일 주소 또는 전화번호"
    }
    
    let passWordTextField = LoginTextField().then {
        $0.placeholder = "비밀번호"
        $0.keyboardType = .numberPad
        
    }
    
    let nickNameTextField = LoginTextField().then {
        $0.placeholder = "닉네임"
       
    }
    
    let locationButton = LoginButton().then {
        $0.setTitle("위치", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.setTitleColor(.white, for: .highlighted)
        
    }
    
    let recommendTextField  = LoginTextField().then {
        $0.placeholder = "추천 코드 입력"
        
    }
    
    let signButton = LoginButton().then {
        $0.setTitle("회원가입", for: .normal)
        $0.setTitleColor(.black, for: .normal)
    }
    
    lazy var stackView = UIStackView().then {
        $0.axis = .vertical
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.spacing = 15
    }
    
    let addInfoLabel = UILabel().then {
        $0.text = "추가 정보 입력"
        $0.font = UIFont(name: "Georgia-Bold ", size: 20)
        $0.textAlignment = .center
        $0.textColor = .lightGray
    }
    
    let clearButton = UIButton().then {
        $0.backgroundColor = .clear
    }
    
    lazy var switchButton = UISwitch().then {
        $0.onTintColor = .red
        $0.isOn = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func configure() {
        [titleLabel, stackView, clearButton, addInfoLabel, switchButton].forEach {
            self.addSubview($0)
        }
        
        [emailPhoneTextField, passWordTextField, nickNameTextField, locationButton, recommendTextField, signButton].forEach {
            stackView.addArrangedSubview($0)
        }
    }
    
    override func setConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.leading.equalTo(60)
            make.trailing.equalTo(-60)
            make.top.equalTo(80)
        }
        
        stackView.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.leading.equalTo(60)
            make.trailing.equalTo(-60)
            make.top.equalTo(titleLabel.snp.bottom).offset(100)
        }
        
        addInfoLabel.snp.makeConstraints { make in
            make.leading.equalTo(60)
            make.top.equalTo(stackView.snp.bottom).offset(15)
        }
        
        clearButton.snp.makeConstraints { make in
            make.leading.trailing.top.bottom.equalTo(addInfoLabel)
            
        }
        
        switchButton.snp.makeConstraints { make in
            make.trailing.equalTo(-60)
            make.top.equalTo(stackView.snp.bottom).offset(15)
        }
        
        
        
        
    }
    
    
    
    
}
