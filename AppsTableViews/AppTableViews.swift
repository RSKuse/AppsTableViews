//
//  AppTableViews.swift
//  AppsTableViews
//
//  Created by Reuben Simphiwe Kuse on 2023/03/21.
//

import UIKit

class AppTableViews: UITableViewCell {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Google Maps"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.text = "1,0 GB"
        label.textColor = .lightGray
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var googleLogoImage: UIImageView = {
     let imageView = UIImageView()
     imageView.image = UIImage(named: "google_maps_icon")
     imageView.contentMode = .scaleAspectFill
     imageView.clipsToBounds = true
     imageView.translatesAutoresizingMaskIntoConstraints = false
     return imageView
    }()
    
    var theSwitch: UISwitch {
        let theSwitch = UISwitch()
        theSwitch.tintColor = .green
        theSwitch.isOn = true
        theSwitch.translatesAutoresizingMaskIntoConstraints = true
        return theSwitch
    }
    
    lazy var titleDetailLabelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, detailLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 10.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        
        addSubview(titleDetailLabelStackView)
        addSubview(googleLogoImage)
        addSubview(theSwitch)
      
        titleDetailLabelStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleDetailLabelStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 50).isActive = true
        titleDetailLabelStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -50).isActive = true
       
        
        googleLogoImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        googleLogoImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        googleLogoImage.leftAnchor.constraint(equalTo:titleDetailLabelStackView.leftAnchor, constant: -45).isActive = true
        googleLogoImage.topAnchor.constraint(equalTo: titleDetailLabelStackView.topAnchor, constant: 0).isActive = true
        
//        theSwitch.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        theSwitch.widthAnchor.constraint(equalToConstant: 40).isActive = true
//        theSwitch.leftAnchor.constraint(equalTo:titleDetailLabelStackView.rightAnchor, constant: -45).isActive = true
//        theSwitch.topAnchor.constraint(equalTo: titleDetailLabelStackView.topAnchor, constant: 0).isActive = true
        
        

    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
}