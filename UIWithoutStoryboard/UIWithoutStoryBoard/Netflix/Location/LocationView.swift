//
//  LocationView.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/21.
//

import UIKit

import SnapKit
import Then


class LocationView: BaseView {
    
    let locationTextField = UITextField().then {
        $0.placeholder = "위치를 입력해주세요"
        $0.textColor = .white
        $0.textAlignment = .left
        $0.backgroundColor = .lightGray
    }
    
    let locationButton = UIButton().then {
        $0.setTitle("위치 검색 하기", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.layer.borderColor = UIColor.white.cgColor
        $0.backgroundColor = .white
        $0.layer.borderWidth = 2
        $0.layer.cornerRadius = 10
        $0.clipsToBounds = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func configure() {
        [locationTextField, locationButton].forEach {
            self.addSubview($0)
        }
    }
    
    override func setConstraints() {
        locationTextField.snp.makeConstraints { make in
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
            make.top.equalTo(50)
            make.height.equalTo(50)
        }
        
        locationButton.snp.makeConstraints { make in
            make.trailing.equalTo(-30)
            make.top.equalTo(locationTextField.snp.bottom).offset(1)
            make.height.equalTo(44)
            make.width.equalTo(120)
        }
        
    }
}
