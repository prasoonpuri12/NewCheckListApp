//
//  ViewController.swift
//  NewCheckLists
//
//  Created by Prasoon Puri on 6/13/16.
//  Copyright © 2016 Prasoon Puri. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CheckListItem", forIndexPath:indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        switch indexPath.row {
        case 0:
             label.text = "Cow"
        case 1:
             label.text = "Lion"
        case 2:
             label.text = "Tiger"
        case 3:
            label.text = "Lion"
        case 4:
            label.text = "Deer"
        case 5:
            label.text = "Rabbit"
        case 6:
            label.text = "Rakoon"
        case 7:
            label.text = "Fox"
        default :
            print("Some error occured")
        }
        
        return cell
        
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        
        if cell?.accessoryType == .Checkmark {
            cell?.accessoryType = .None
        } else{
            cell?.accessoryType = .Checkmark
        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated:false)
    }

}

