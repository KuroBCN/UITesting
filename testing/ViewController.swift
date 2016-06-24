//
//  ViewController.swift
//  testing
//
//  Created by Pereiro, Delfin on 20/06/16.
//  Copyright © 2016 Pereiro, Delfin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, UIAccessibilityIdentification {

    internal var accessibilityIdentifier: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        addHeader()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func addHeader() {
        
        let container = UIView(frame: CGRectMake(0, 0, 375, 200))
        container.backgroundColor = UIColor.orangeColor()
        container.isAccessibilityElement = false
        let label = UILabel(frame: CGRectMake(0, 100, 375, 20))
        label.backgroundColor = UIColor.yellowColor()
        label.textAlignment = NSTextAlignment.Center
        label.accessibilityIdentifier = "labelIdentifier"
        label.text = "I am a label"
        container.addSubview(label)
        
//        self.tableView.tableHeaderView = container
        self.tableView.addSubview(container)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        // Configure the cell..
        return cell
    }
}

