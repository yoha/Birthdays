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
    let patternNameLabel: UILabel
    
    let patternView: UIView

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.systemFont(ofSize: 30)
        
        birthdayLabel = UILabel()
        birthdayLabel.translatesAutoresizingMaskIntoConstraints = false
        
        patternNameLabel = UILabel()
        patternNameLabel.translatesAutoresizingMaskIntoConstraints = false
        patternNameLabel.font = nameLabel.font
        patternNameLabel.textColor = UIColor.white
        
        patternView = UIView()
        patternView.translatesAutoresizingMaskIntoConstraints = false
        patternView.clipsToBounds = true
        patternView.backgroundColor = UIColor(patternImage: UIImage(named: "cellBackgroundPattern")!)
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(nameLabel)
        addSubview(birthdayLabel)
        addSubview(patternView)
        patternView.addSubview(patternNameLabel)
        
        let views = ["pattern": patternView, "name": nameLabel, "birthday": birthdayLabel]
        
        var layoutConstraints = [NSLayoutConstraint]()
        layoutConstraints += NSLayoutConstraint.constraints(withVisualFormat: "|[pattern]",
                                                            options: [],
                                                            metrics: nil,
                                                            views: views)
        layoutConstraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|[pattern]|",
                                                            options: [],
                                                            metrics: nil,
                                                            views: views)
        layoutConstraints.append(patternView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80))
        layoutConstraints.append(nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor))
        layoutConstraints.append(nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor))
        layoutConstraints += NSLayoutConstraint.constraints(withVisualFormat: "[birthday]-|",
                                                            options: [],
                                                            metrics: nil,
                                                            views: views)
        layoutConstraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[birthday]|",
                                                            options: [],
                                                            metrics: nil,
                                                            views: views)
        layoutConstraints.append(patternNameLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor))
        layoutConstraints.append(patternNameLabel.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor))
        NSLayoutConstraint.activate(layoutConstraints)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
