//
//  MessageViews.swift
//  AppsTableViews
//
//  Created by Reuben Simphiwe Kuse on 2023/03/22.
//

import UIKit

class MessageViews: UITableViewCell {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Messages"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var senderLabel: UILabel = {
        let label = UILabel()
        label.text = "+27 820070145541800"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.text = "Absa:CHEQ0274, 22/03/23 STEERS DINER QUEENSTOWNQueensto reserved R156.70 for a purchase.Your available balance: R12 874 634.15 Help 0860008600; KUSERS 001"
        label.textColor = .darkGray
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var timestampLabel: UILabel = {
        let label = UILabel()
        label.text = "yesterday"
        label.textColor = .darkGray
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var profileImage: UIImageView = {
           let imageView = UIImageView()
           imageView.image = UIImage(named: "profile_icon")
           imageView.layer.cornerRadius = 20
           imageView.contentMode = .scaleAspectFill
           imageView.backgroundColor = .darkGray
           imageView.clipsToBounds = true
           imageView.translatesAutoresizingMaskIntoConstraints = false
           return imageView
       }()
    lazy var nextArrowImage: UIImageView = {
            let imageView = UIImageView()
            imageView.image = UIImage(named: "next_right_icon")
            imageView.layer.cornerRadius = 20
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()

    lazy var titleTimeStampStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, timestampLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 10.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var senderDetailStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleTimeStampStackView, detailLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 5.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        
        addSubview(senderDetailStackView)
        addSubview(profileImage)
        addSubview(nextArrowImage)
        
        senderDetailStackView.leftAnchor.constraint(equalTo: leftAnchor,
                                                constant: 20).isActive = true
        senderDetailStackView.rightAnchor.constraint(equalTo: rightAnchor,
                                                 constant: -20).isActive = true
        senderDetailStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        titleTimeStampStackView.leftAnchor.constraint(equalTo: leftAnchor,
                                                      constant: 20).isActive = true
        titleTimeStampStackView.rightAnchor.constraint(equalTo: rightAnchor,
                                                       constant: -30).isActive = true
        
        timestampLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        profileImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        profileImage.leftAnchor.constraint(equalTo:titleTimeStampStackView.leftAnchor, constant: -20).isActive = true
        profileImage.topAnchor.constraint(equalTo: titleTimeStampStackView.topAnchor, constant: 0).isActive = true
        
        nextArrowImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        nextArrowImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        nextArrowImage.leftAnchor.constraint(equalTo:titleTimeStampStackView.rightAnchor, constant: 5).isActive = true
        nextArrowImage.topAnchor.constraint(equalTo: titleTimeStampStackView.topAnchor, constant: 0).isActive = true


    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}
