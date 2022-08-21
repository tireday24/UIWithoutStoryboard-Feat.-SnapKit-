//
//  Extension + UIViewController.swift
//  UIWithoutStoryboard
//
//  Created by 권민서 on 2022/08/21.
//

import UIKit

enum Transition {
    case push
    case present
}

extension UIViewController {
    func transionController<T: UIViewController>(storyboard: String, vc: T, transition: Transition, complition: (T) -> ()) {
        
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        
        switch transition {
        case .push:
            guard let vc = sb.instantiateViewController(withIdentifier: T.reuseIdentifier) as? T else { return }
            complition(vc)
            navigationController?.pushViewController(vc, animated: true)
        case .present:
            guard let vc = sb.instantiateViewController(withIdentifier: T.reuseIdentifier) as? T else { return }
            let nv = UINavigationController(rootViewController: vc)
            nv.modalPresentationStyle = .fullScreen
            present(nv, animated: true)
        }
    }
}

