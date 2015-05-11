//
//  MainTableViewController.swift
//  testProgramming
//
//  Created by Chiang Siek Siang on 2015/5/11.
//  Copyright (c) 2015年 Chiang Siek Siang. All rights reserved.
//

import UIKit

class RCMainTableViewController: UITableViewController {
    let sectionArray = [
        "App Programming",
        "View Programming",
        "UIPickerView"
    ]
    let rowDictionary = [
        "App Programming": [
            "Life Cycle"
        ],
        "View Programming": [
            "Layout level"
        ],
        "UIPickerView": [
            "Interception Events"
        ]
    ]
    let rowDetailDictionary = [
        "App Programming": [
            "test controller"
        ],
        "View Programming": [
            "Include navigation bar and tab bar"
        ],
        "UIPickerView": [
            "add gesture(touch) event"
        ]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.automaticallyAdjustsScrollViewInsets = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return sectionArray.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionArray[section]
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return (rowDictionary["\(sectionArray[section])"]?.count)!
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell!
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "cell")
        }
        
        if let rowData = rowDictionary["\(sectionArray[indexPath.section])"] {
            cell.textLabel!.text = rowData[indexPath.row]
        }
        
        if let rowDetailData = rowDetailDictionary["\(sectionArray[indexPath.section])"] {
            cell.detailTextLabel!.text = rowDetailData[indexPath.row]
        }

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        
        if let c = cell {
            let title = c.textLabel?.text
            if title == "Layout level" {
                performSegueWithIdentifier("Show View Level", sender: nil)
            } else if title == "Interception Events" {
//                let viewController = PickerViewInterceptionEventsViewController(nibName: "PickerViewInterceptionEventsViewController", bundle: nil)
//                navigationController?.pushViewController(viewController, animated: true)
            }
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
