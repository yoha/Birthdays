//
//  BirthdayTableViewCell.swift
//  Birthdays
//
//  Created by Yohannes Wijaya on 12/6/16.
//  Copyright © 2016 Yohannes Wijaya. All rights reserved.
//

import UIKit

class BirthdayTableViewCell: UITableViewCell {

    // MARK: - Stored Properties
    
    let nameLabel: UILabel
    let birthdayLabel: UILabel

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        birthdayLabel = UILabel()
        birthdayLabel.translatesAutoresizingMaskIntoConstraints = false
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(nameLabel)
        addSubview(birthdayLabel)
        
        let labelViews = ["name": nameLabel, "birthday": birthdayLabel]
        
        var layoutConstraints = [NSLayoutConstraint]()
        layoutConstraints.append(nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor))
        layoutConstraints.append(nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor))
        layoutConstraints += NSLayoutConstraint.constraints(withVisualFormat: "[birthday]-|",
                                                            options: [],
                                                            metrics: nil,
                                                            views: labelViews)
        layoutConstraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[birthday]|",
                                                            options: [],
                                                            metrics: nil,
                                                            views: labelViews)
        NSLayoutConstraint.activate(layoutConstraints)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
