//
//  BirthdaysListDataProvider.swift
//  Birthdays
//
//  Created by Yohannes Wijaya on 12/1/16.
//  Copyright © 2016 Yohannes Wijaya. All rights reserved.
//

import UIKit

class BirthdaysListDataProvider: NSObject {
    
    // MARK: - Stored Properties
    
    fileprivate var birthdays = [Birthday]()
    fileprivate let cellID = "Reusable Cell"
    
    // MARK: - Helper Methods
    
    func registerCellsForTableView(_ tableView: UITableView) {
        tableView.register(BirthdayTableViewCell.self, forCellReuseIdentifier: cellID)
    }
    
    func addBirthday(_ dob: Birthday) {
        birthdays.append(dob)
    }
}

extension BirthdaysListDataProvider: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birthdays.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let birthday = birthdays[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! BirthdayTableViewCell
        cell.nameLabel.text = birthday.firstName
        cell.birthdayLabel.text = "\(birthday.birthday.day!) \(birthday.birthday.month!)"
        return cell
    }
}
