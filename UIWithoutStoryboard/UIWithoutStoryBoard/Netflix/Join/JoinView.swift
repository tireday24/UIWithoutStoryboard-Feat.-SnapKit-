//
//  JoinView.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/21.
//

import UIKit

import SnapKit
import Then

class JoinView: BaseView {
    
    let titleLabel = UILabel().then {
        $0.text = "NETFLIX"
        $0.textColor = .red
        $0.textAlignment = .center
        $0.font = UIFont(name: "AvenirNext-Heavy", size: 30)
    }
    
    let loginLabel = UILabel().then {
        $0.text = "로그인"
        $0.textColor = .white
        $0.textAlignment = .center
        $0.font = UIFont(name: "AvenirNext-Heavy", size: 45)
    }
    
    let idTextField = JoinTextField().then {
        $0.placeholder = "이메일 주소 또는 전화번호"
    }
    
    let passwordTextField = JoinTextField().then {
        $0.placeholder = "비밀번호"
    }
    
    lazy var stackView = UIStackView().then {
        $0.axis = .vertical
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.spacing = 5
    }
    
    let loginButton = UIButton().then {
        $0.setTitle("로그인", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .red
    }
    
    let checkBox = UIButton().then {
        $0.backgroundColor = .white
    }
    
    let loginInfoSaveLabel = loginInfo().then {
        $0.text = "로그인 정보 저장"
        $0.font = .boldSystemFont(ofSize: 15)
    }
    
    let loginStackView = UIStackView().then {
        $0.axis = .horizontal
        $0.alignment = .fill
        $0.distribution = .fillProportionally
        $0.spacing = 5
    }
    
    let helpButton = UIButton().then {
        $0.setTitle("도움이 필요하신가요?", for: .normal)
        $0.setTitleColor(.lightGray, for: .normal)
        $0.layer.borderColor = UIColor.clear.cgColor
    }
    
    let notNeflixLabel =  loginInfo().then {
        $0.text = "Neflix 회원이 아니신가요?"
    }
    
    let rightNowButton = UIButton().then {
        $0.setTitle("지금 가입하세요", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .clear
    }
    
    let joinStackView = UIStackView().then {
        $0.axis = .horizontal
        $0.alignment = .fill
        $0.distribution = .fillProportionally
        $0.spacing = 5
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configure() {
        [titleLabel, loginLabel, stackView, loginButton, loginStackView, helpButton, joinStackView ].forEach {
            self.addSubview($0)
        }
        
        [idTextField, passwordTextField].forEach {
            stackView.addArrangedSubview($0)
        }
        
        [checkBox, loginInfoSaveLabel].forEach {
            loginStackView.addArrangedSubview($0)
        }
        
        [notNeflixLabel, rightNowButton].forEach {
            joinStackView.addArrangedSubview($0)
        }
       
    }
    
    override func setConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.leading.equalTo(20)
            make.width.equalTo(130)
            make.height.equalTo(70)
        }
        
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.leading.equalTo(20)
        }
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(30)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.width.equalTo(300)
            make.height.equalTo(100)
        }
        
        loginButton.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.top.equalTo(stackView.snp.bottom).offset(20)
        }
        
        loginStackView.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.top.equalTo(loginButton.snp.bottom).offset(10)
        }
        
        helpButton.snp.makeConstraints { make in
            make.trailing.equalTo(-20)
            make.top.equalTo(loginButton.snp.bottom).offset(10)
        }
        
        joinStackView.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.top.equalTo(loginButton.snp.bottom).offset(100)
        }
        
       
        
    }
    
    
}
