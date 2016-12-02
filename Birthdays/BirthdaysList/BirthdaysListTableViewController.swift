//
//  BirthdaysListTableViewController.swift
//  Birthdays
//
//  Created by Yohannes Wijaya on 12/1/16.
//  Copyright © 2016 Yohannes Wijaya. All rights reserved.
//

import UIKit
import ContactsUI

class BirthdaysListTableViewController: UITableViewController {
    
    // MARK: - Stored Properties
    
    var dataProvider: BirthdaysListDataProvider?

    // MARK: - UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataProvider
        dataProvider?.registerCellsForTableView(tableView)
        
        let addBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(BirthdaysListTableViewController.addPerson))
        navigationItem.rightBarButtonItem = addBarButtonItem
    }
    
    // MARK: - Helper Methods
    
    func addPerson() {
        let contactPickerViewController = CNContactPickerViewController()
        contactPickerViewController.delegate = self
        present(contactPickerViewController, animated: true, completion: nil)
    }
}

// MARK: - CNContactPickerDelegate

extension BirthdaysListTableViewController: CNContactPickerDelegate {
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact) {
        if let birthdayIsSet = contact.birthday {
            let contact = Birthday(firstName: contact.givenName, lastName: contact.familyName, birthday: birthdayIsSet)
            print(contact)
        }
    }
}
