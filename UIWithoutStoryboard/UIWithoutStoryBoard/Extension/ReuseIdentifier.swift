//
//  ReuseIdentifier.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/21.
//

import UIKit

protocol ReuseIdentifier {
    static var reuseIdentifier: String { get }
}

extension UIViewController: ReuseIdentifier {
    static var reuseIdentifier: String {
        String(describing: self)
    }
}

extension UICollectionViewCell: ReuseIdentifier {
    static var reuseIdentifier: String {
        String(describing: self)
    }
    
    
}
