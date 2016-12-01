//
//  BirthdaysListViewControllerTests.swift
//  Birthdays
//
//  Created by Yohannes Wijaya on 12/1/16.
//  Copyright © 2016 Yohannes Wijaya. All rights reserved.
//

import XCTest
@testable import Birthdays

class BirthdaysListViewControllerTests: XCTestCase {
    
    // MARK: - Stored Properties
    
    var viewController: BirthdaysListTableViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        viewController = BirthdaysListTableViewController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testViewController_HasTableView() {
        XCTAssertNotNil(viewController.tableView)
    }
    
}
