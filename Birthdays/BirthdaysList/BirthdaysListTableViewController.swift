//
//  BirthdaysListTableViewController.swift
//  Birthdays
//
//  Created by Yohannes Wijaya on 12/1/16.
//  Copyright © 2016 Yohannes Wijaya. All rights reserved.
//

import UIKit

class BirthdaysListTableViewController: UITableViewController {
    
    // MARK: - Stored Properties
    
    var dataProvider: BirthdaysListDataProvider?

    // MARK: - UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        
        tableView.dataSource = dataProvider
        dataProvider?.registerCellsForTableView(tableView)
    }
}
