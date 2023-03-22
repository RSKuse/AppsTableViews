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
    
    lazy var theSwitch: UISwitch = {
        let theSwitch = UISwitch()
        theSwitch.tintColor = .green
        theSwitch.isOn = true
        theSwitch.translatesAutoresizingMaskIntoConstraints = false
        return theSwitch
    }()
    
    lazy var titleDetailLabelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, detailLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 6.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        
        theSwitch.frame = CGRect(x: 5, y: 5, width: 100, height: contentView.frame.size.height-10)
        
        addSubview(googleLogoImage)
        addSubview(theSwitch)
        addSubview(titleDetailLabelStackView)
        
        googleLogoImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        googleLogoImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        googleLogoImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        googleLogoImage.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true

        theSwitch.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        theSwitch.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
        
        titleDetailLabelStackView.leftAnchor.constraint(equalTo: googleLogoImage.rightAnchor, constant: 16).isActive = true
        titleDetailLabelStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleDetailLabelStackView.rightAnchor.constraint(equalTo: theSwitch.leftAnchor, constant: -16).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}
