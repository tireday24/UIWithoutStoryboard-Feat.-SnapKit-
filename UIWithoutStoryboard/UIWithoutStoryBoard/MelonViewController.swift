//
//  MelonViewController.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/17.
//

import UIKit

import SnapKit
import Then

class MelonViewController: UIViewController {
    
    let musicButton = UIButton().then {
        $0.tintColor = .white
        $0.setImage(UIImage(systemName: "music.note.list"), for: .normal)
    }
    
    let titleLabel = UILabel().then {
        $0.text = "Hype boy"
        $0.textColor = .white
        $0.font = .boldSystemFont(ofSize: 20)
        $0.textAlignment = .center
    }
    
    let subTitleLabel = UILabel().then {
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 10)
        $0.textAlignment = .center
        $0.text = "NewJeans"
    }
    
    let downButton = UIButton().then {
        $0.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        $0.tintColor = .white
        $0.backgroundColor = .clear
    }
    
    let settingButton = UIButton().then {
        $0.setImage(UIImage(systemName: "list.bullet"), for: .normal)
        $0.tintColor = .white
        $0.backgroundColor = .clear
    }
    
    let albumImage = UIImageView().then {
        $0.image = UIImage(named: "AlbumCover")
    }
    
    let heartButton = UIButton().then {
        $0.setImage(UIImage(systemName: "heart"), for: .normal)
        $0.backgroundColor = .clear
        $0.tintColor = .white
    }
    
    let likeLabel = UILabel().then {
        $0.text = "66793"
        $0.textColor = .white
        $0.font = .boldSystemFont(ofSize: 15)
    }
    
    let simmilarButton = UIButton().then {
        $0.setTitle("유사곡", for: .normal)
        $0.tintColor = .white
    }
    
    let snsButton = UIButton().then {
        $0.setImage(UIImage(systemName: "paperplane"), for: .normal)
    }
    
    let textLabel = UILabel().then {
        $0.textAlignment = .center
        $0.textColor = .green
        $0.font = .systemFont(ofSize: 15)
    }
    
    let textLabelTwo = UILabel().then {
        $0.textAlignment = .center
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 15)
    }
    
    let repeatButton = UIButton().then {
        $0.setImage(UIImage(systemName: "repeat"), for: .normal)
        $0.tintColor = .white
    }
    
    let shuffleButton = UIButton().then {
        let imageConfig = UIImage.SymbolConfiguration(pointSize: 35, weight: .light)
        let image = UIImage(systemName: "shuffle", withConfiguration: imageConfig)
        $0.setImage(image, for: .normal)
        $0.tintColor = .white
    }
    
    let bottomButton = UIButton().then {
        let imageConfig = UIImage.SymbolConfiguration(pointSize: 35, weight: .light)
        let image = UIImage(systemName: "text.line.last.and.arrowtriangle.forward", withConfiguration: imageConfig)
        $0.setImage(image, for: .normal)
        $0.tintColor = .white
    }
    
    let backwordButton = UIButton().then {
        let imageConfig = UIImage.SymbolConfiguration(pointSize: 35, weight: .light)
        let image = UIImage(systemName: "backward.end.fill", withConfiguration: imageConfig)
        $0.setImage(image, for: .normal)
        $0.tintColor = .white
    }
    
    let playButton = UIButton().then {
        let imageConfig = UIImage.SymbolConfiguration(pointSize: 40, weight: .light)
        let image = UIImage(systemName: "play.fill", withConfiguration: imageConfig)
        $0.setImage(image, for: .normal)
        $0.tintColor = .white
        
    }
    
    let fowardButton = UIButton().then {
        let imageConfig = UIImage.SymbolConfiguration(pointSize: 35, weight: .light)
        let image = UIImage(systemName: "forward.end.fill", withConfiguration: imageConfig)
        $0.setImage(image, for: .normal)
        $0.tintColor = .white
    }
    
    let speakerButton = UIButton().then {
        $0.setImage(UIImage(systemName: "speaker"), for: .normal)
        $0.tintColor = .white
    }
    
    lazy var progressView = UIProgressView().then {
        $0.trackTintColor = .white
        $0.progressTintColor = .green
        $0.progress = 0.1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black

        configureUI()
    }

    func configureUI() {
        [musicButton, titleLabel, subTitleLabel, downButton, settingButton, albumImage, heartButton, likeLabel, simmilarButton, snsButton, textLabel, repeatButton, shuffleButton, bottomButton, backwordButton, playButton, fowardButton, speakerButton, progressView].forEach {
            view.addSubview($0)
        }
        
        downButton.snp.makeConstraints { make in
            make.topMargin.equalTo(20)
            make.leadingMargin.equalTo(100)
            make.trailingMargin.equalTo(200)
        }
        
        settingButton.snp.makeConstraints { make in
            make.topMargin.equalTo(60)
            make.leadingMargin.equalTo(100)
            make.trailingMargin.equalTo(200)
        }
        
        subTitleLabel.snp.makeConstraints { make in
            make.topMargin.equalTo(60)
            make.centerX.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints { make in
            make.topMargin.equalTo(20)
            make.centerX.equalToSuperview()
        }
        
        musicButton.snp.makeConstraints { make in
            make.topMargin.equalTo(20)
            make.leadingMargin.equalTo(120)
        }
        
        albumImage.snp.makeConstraints { make in
            make.height.equalTo(350)
            make.width.equalTo(350)
            make.top.equalTo(180)
            make.centerX.equalToSuperview()
        }
        
        playButton.snp.makeConstraints { make in
            make.bottomMargin.equalTo(-50)
            make.leadingMargin.equalTo(165)
            make.centerX.equalToSuperview()
            
        }
        
        backwordButton.snp.makeConstraints { make in
            make.bottomMargin.equalTo(-50)
            make.leadingMargin.equalTo(100)

            
        }
        
        fowardButton.snp.makeConstraints { make in
            make.bottomMargin.equalTo(-50)
            make.leadingMargin.equalTo(235)
        
            
        }
        
        bottomButton.snp.makeConstraints { make in
            make.bottomMargin.equalTo(-50)
            make.leadingMargin.equalTo(40)
        }
        
        shuffleButton.snp.makeConstraints { make in
            make.bottomMargin.equalTo(-50)
            make.trailingMargin.equalTo(-20)
        }
        
        
    }

}
