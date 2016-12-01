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
    
    fileprivate let cellID = "Reusable Cell"
    
    // MARK: - Helper Methods
    
    func registerCellsForTableView(_ tableView: UITableView) {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
    }
}

extension BirthdaysListDataProvider: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = "Row: \(indexPath.row)"
        return cell
    }
}
