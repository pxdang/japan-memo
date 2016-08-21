//
//  wordTableViewController.swift
//  languageMemo
//
//  Created by pxdang on 9/22/15.
//  Copyright © 2015 pxdang. All rights reserved.
//

import UIKit

class wordTableViewController: UITableViewController {
    var words = [Word]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sample Data for candyArray
        self.words = [Word(name:"Chocolate", explain:"chocolate Bar"),
            Word(name:"Chocolate", explain:"chocolate Chip")]
        
        // Reload the table
        self.tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.words.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //ask for a reusable cell from the tableview, the tableview will create a new one if it doesn't have any
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        // Get the corresponding candy from our candies array
        let word = self.words[indexPath.row]
        
        // Configure the cell
        cell.textLabel!.text = word.name
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }
}
