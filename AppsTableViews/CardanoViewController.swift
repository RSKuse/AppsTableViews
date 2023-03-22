//
//  CardanoViewController.swift
//  AppsTableViews
//
//  Created by Reuben Simphiwe Kuse on 2023/03/21.
//

import Foundation
import UIKit

class CardanoViewController: UIViewController {

    lazy var cardanoLogoImage: UIImageView = {
     let imageView = UIImageView()
     imageView.image = UIImage(named: "cardano_logo")
     imageView.layer.cornerRadius = 20
     imageView.contentMode = .scaleAspectFill
     //imageView.backgroundColor = .darkGray
     imageView.clipsToBounds = true
     imageView.translatesAutoresizingMaskIntoConstraints = false
     return imageView
    }()
    
    override func viewDidLoad() {
            super.viewDidLoad()
            setupCardanoLogoImageConstraints()
            view.backgroundColor = .systemCyan
        
        }
    
    func setupCardanoLogoImageConstraints() {
        view.addSubview(cardanoLogoImage)
       
        
        cardanoLogoImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        cardanoLogoImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        cardanoLogoImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        cardanoLogoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        
    }
    
}


























//class CardanoViewController: UIViewController {
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .systemCyan
//    }
//}
//

