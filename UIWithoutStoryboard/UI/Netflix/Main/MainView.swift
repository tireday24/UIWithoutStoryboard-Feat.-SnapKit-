//
//  MainView.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/20.
//

import UIKit

import SnapKit
import Then

class MainView: BaseView {
    
    let alphaImage = UIImageView().then {
        $0.image = UIImage(named: "background-1")
    }
    
    let backgroundImage = UIImageView().then {
        $0.image = UIImage(named: "광해")
    }
    
    let titleLabel = UILabel().then({
        $0.text = "N"
        $0.textColor = .red
        $0.textAlignment = .center
        $0.font = UIFont(name: "AvenirNext-Heavy", size: 50)
    })
    
    let tvTitle = MainTopLabel().then {
        $0.text = "TV 프로그램"
    }
    
    let movieTitle = MainTopLabel().then {
        $0.text = "영화"
    }
    
    let likeTitle = MainTopLabel().then {
        $0.text = "내가 찜한 콘텐츠"
    }
    
    let likeImageButton = UIButton().then {
        $0.tintColor = .white
        $0.setImage(UIImage(systemName: "checkmark"), for: .normal)
    }
    
    let likeLabel = MidLabel().then {
        $0.text = "내가 찜한 콘텐츠"
    }
    
    let playButton = UIButton().then {
        $0.setImage(UIImage(named: "play_normal"), for: .normal)
        $0.setImage(UIImage(named: "play_highlighted"), for: .highlighted)
        $0.layer.borderColor = UIColor.white.cgColor
    }
    
    let infoImageButton = UIButton().then {
        $0.tintColor = .white
        $0.setImage(UIImage(systemName: "info.circle"), for: .normal)
    }
    
    let infoLabel = MidLabel().then {
        $0.text = "정보"
    }
    
    let firstImageView = BottomImage(frame: CGRect.zero).then {
        $0.image = UIImage(named: "겨울왕국2")
    }
    
    let secondImageView = BottomImage(frame: CGRect.zero).then {
        $0.image = UIImage(named: "부산행")
    }
    
    let thirdImageView = BottomImage(frame: CGRect.zero).then {
        $0.image = UIImage(named: "베테랑")
    }
    
    let preViewTitle = bottomLabel().then {
        $0.text = "미리보기"
    }
    
    lazy var stackView = UIStackView().then {
        $0.axis = .horizontal
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.spacing = 20
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configure() {
        [backgroundImage, alphaImage, titleLabel, tvTitle, movieTitle, likeTitle, likeImageButton, likeLabel, playButton, infoImageButton, infoLabel, preViewTitle, stackView].forEach {
            self.addSubview($0)
        }
        [firstImageView, secondImageView, thirdImageView].forEach {
            stackView.addArrangedSubview($0)
        }
        
    }
    
    override func setConstraints() {
        
        alphaImage.snp.makeConstraints { make in
            make.height.equalTo(self).multipliedBy(0.75)
            make.leading.top.trailing.equalTo(self.safeAreaLayoutGuide)
        }
        
        backgroundImage.snp.makeConstraints { make in
            make.height.equalTo(self).multipliedBy(0.75)
            make.leading.top.trailing.equalTo(self.safeAreaLayoutGuide)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.leadingMargin.equalTo(self.safeAreaLayoutGuide)
            make.topMargin.equalTo(10)
            make.height.width.equalTo(100)
        }
        
        tvTitle.snp.makeConstraints { make in
            make.leadingMargin.equalTo(titleLabel.snp.trailing).offset(10)
            make.topMargin.equalTo(50)
            make.height.equalTo(30)
            make.width.equalTo(100)
        }
        
        movieTitle.snp.makeConstraints { make in
            make.leadingMargin.equalTo(tvTitle.snp.trailing).offset(5)
            make.topMargin.equalTo(50)
            make.height.equalTo(30)
            make.width.equalTo(100)
          
        }
        
        likeTitle.snp.makeConstraints { make in
            make.trailingMargin.equalTo(-20)
            make.topMargin.equalTo(50)
            make.height.equalTo(30)
            make.width.equalTo(100)
        }
        
        likeImageButton.snp.makeConstraints { make in
            make.leading.equalTo(60)
            make.top.equalTo(titleLabel.snp.bottom).offset(450)
        }
        
        likeLabel.snp.makeConstraints { make in
            make.leading.equalTo(40)
            make.top.equalTo(likeImageButton.snp.bottom).offset(5)
            make.centerX.equalTo(likeImageButton)
        }
        
        playButton.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(450)
            make.leading.equalTo(likeImageButton.snp.trailing).offset(65)
        }
        
        infoImageButton.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(450)
            make.leading.equalTo(playButton.snp.trailing).offset(65)
        }
        
        infoLabel.snp.makeConstraints { make in
            make.leading.equalTo(40)
            make.top.equalTo(infoImageButton.snp.bottom).offset(5)
            make.centerX.equalTo(infoImageButton)
        }
        
        preViewTitle.snp.makeConstraints { make in
            make.top.equalTo(likeLabel.snp.bottom).offset(20)
            make.leading.equalTo(20)
        }
        
        stackView.snp.makeConstraints { make in
            make.leading.equalTo(10)
            make.trailing.equalTo(-10)
            make.top.equalTo(backgroundImage.snp.bottom).offset(5)
            make.bottom.equalTo(self.safeAreaLayoutGuide)
        }
        
        
    }
    
    
}
