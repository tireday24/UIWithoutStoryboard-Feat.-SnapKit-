//
//  KakaoViewController.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/17.
//

import UIKit

import SnapKit
import Then

class KakaoViewController: UIViewController {
    
    //button -> xmark, gift.circle, qrcode, gear.circle
    let xButton = UIButton().then {
        $0.backgroundColor = .clear
        $0.setImage(UIImage(systemName: "xmark"), for: .normal)
        $0.tintColor = .white
    }
    
    let giftButton = UIButton().then {
        $0.backgroundColor = .clear
        $0.setImage(UIImage(systemName: "gift.circle"), for: .normal)
        $0.tintColor = .white
    }
    
    let qrButton = UIButton().then {
        $0.backgroundColor = .clear
        $0.setImage(UIImage(systemName: "qrcode"), for: .normal)
        $0.tintColor = .white
    }
    
    let gearButton = UIButton().then {
        $0.backgroundColor = .clear
        $0.setImage(UIImage(systemName: "gear.circle"), for: .normal)
        $0.tintColor = .white
    }
    
    //ImageView
    let profileImage = UIImageView().then {
        $0.layer.cornerRadius = $0.frame.height/2
        $0.clipsToBounds = true
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.white.cgColor
        $0.image = UIImage(named: "Profile")
    }
    
    //profile Label
    let profileLabel = UILabel().then {
        $0.text = "Daniel"
        $0.textColor = .white
        $0.font = .boldSystemFont(ofSize: 20)
        $0.textAlignment = .center
    }

    //일직선 뷰
    let boundaryView = UIView().then {
        $0.backgroundColor = .white
    }
    
    //bottom button -> message, pencil, swift
    let chatButton = UIButton().then {
        $0.tintColor = .white
        $0.setImage(UIImage(systemName: "message"), for: .normal)
    }
    
    let pencilButton = UIButton().then {
        $0.tintColor = .white
        $0.setImage(UIImage(systemName: "pencil"), for: .normal)
    }
    
    let storyButton = UIButton().then {
        $0.tintColor = .white
        $0.setImage(UIImage(systemName: "swift"), for: .normal)
    }
    
    
    //bottonm Label
    let chatLabel = UILabel().then {
        $0.text = "나와의 채팅하기"
        $0.textAlignment = .center
        $0.font = .systemFont(ofSize: 10)
        $0.textColor = .white
    }
    
    let pencilLabel = UILabel().then {
        $0.text = "프로필  편집"
        $0.textAlignment = .center
        $0.font = .systemFont(ofSize: 10)
        $0.textColor = .white
    }
    
    let storyLabel = UILabel().then {
        $0.text = "카카오 스토리"
        $0.textAlignment = .center
        $0.font = .systemFont(ofSize: 10)
        $0.textColor = .white
    }
    
    //backgroundImage
    let backgroundImageView = UIImageView().then {
        $0.image = UIImage(named: "Background")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        configureUI()
    }
    
    func configureUI() {
        [   backgroundImageView, xButton, giftButton, qrButton, gearButton, profileImage, profileLabel, boundaryView, chatButton, pencilButton, storyButton, chatLabel, pencilLabel, storyLabel].forEach {
            view.addSubview($0)
        }
        
        backgroundImageView.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.bottom.equalTo(0)
            make.leading.equalTo(0)
            make.trailing.equalTo(0)
        }
        
        xButton.snp.makeConstraints { make in
            make.leadingMargin.equalTo(20)
            make.topMargin.equalTo(20)
            make.height.equalTo(44)
            make.width.equalTo(44)
        }
        
        gearButton.snp.makeConstraints { make in
            make.trailingMargin.equalTo(-20)
            make.topMargin.equalTo(20)
            make.height.equalTo(44)
            make.width.equalTo(44)
        }
        
        qrButton.snp.makeConstraints { make in
            make.trailingMargin.equalTo(-50)
            make.topMargin.equalTo(20)
            make.height.equalTo(44)
            make.width.equalTo(44)
        }
        
        giftButton.snp.makeConstraints { make in
            make.trailingMargin.equalTo(-80)
            make.topMargin.equalTo(20)
            make.height.equalTo(44)
            make.width.equalTo(44)
        }
        
        profileImage.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.bottomMargin.equalTo(100)
            make.topMargin.equalTo(470)
            make.leadingMargin.equalTo(150)
            make.trailingMargin.equalTo(150)
            make.centerX.equalToSuperview()
        }
        
        profileLabel.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.bottomMargin.equalTo(100)
            make.topMargin.equalTo(540)
            make.leadingMargin.equalTo(150)
            make.trailingMargin.equalTo(150)
            make.centerX.equalTo(profileImage)
        }
        
        boundaryView.snp.makeConstraints { make in
            make.width.equalTo(414)
            make.height.equalTo(1)
            make.leadingMargin.equalTo(view.safeAreaLayoutGuide)
            make.trailingMargin.equalTo(view.safeAreaLayoutGuide)
            make.bottomMargin.equalTo(100)
            make.topMargin.equalTo(630)
        }
        
        chatButton.snp.makeConstraints { make in
            make.width.equalTo(44)
            make.height.equalTo(44)
            make.bottomMargin.equalTo(100)
            make.topMargin.equalTo(660)
            make.leadingMargin.equalTo(80)
            make.trailingMargin.equalTo(50)
        }
        
        pencilButton.snp.makeConstraints { make in
            make.width.equalTo(44)
            make.height.equalTo(44)
            make.bottomMargin.equalTo(100)
            make.topMargin.equalTo(660)
            make.leadingMargin.equalTo(160)
            make.trailingMargin.equalTo(100)
        }
        
        storyButton.snp.makeConstraints { make in
            make.width.equalTo(44)
            make.height.equalTo(44)
            make.bottomMargin.equalTo(100)
            make.topMargin.equalTo(660)
            make.leadingMargin.equalTo(240)
            make.trailingMargin.equalTo(100)
        }
        
        chatLabel.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(50)
            make.bottomMargin.equalTo(100)
            make.topMargin.equalTo(685)
            make.leadingMargin.equalTo(60)
            make.trailingMargin.equalTo(50)
        }
        
        pencilLabel.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(50)
            make.bottomMargin.equalTo(100)
            make.topMargin.equalTo(685)
            make.leadingMargin.equalTo(140)
            make.trailingMargin.equalTo(100)
        }
        
        storyLabel.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(50)
            make.bottomMargin.equalTo(100)
            make.topMargin.equalTo(685)
            make.leadingMargin.equalTo(225)
            make.trailingMargin.equalTo(100)
        }
        
        
        
    }
    
    
    

   
}
