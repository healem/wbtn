//
//  TopTenMenuController.swift
//  Whiskey By The Numbers
//
//  Created by Mike Healey on 4/28/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

class TopTenMenuController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    let categories = [ "Highest User Rating", "Highest Score", "Best Value", "Most Drinkable", "Cheapest"]
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: Table View
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SelectedTenCell", forIndexPath: indexPath)
        let category = categories[indexPath.row]
        
        // Set label text and appearance
        cell.textLabel!.text = category
        cell.textLabel?.textColor = UIColor.orangeHighlightText()
        
        // Set detail text and appearance
        //cell.detailTextLabel!.text = "Score: 51 Value: 51"
        //cell.detailTextLabel?.textColor = UIColor.orangeHighlightText()
        
        // Set cell border appearance
        cell.layer.borderColor = UIColor.redMedium().CGColor
        cell.layer.borderWidth = 0.5
        
        return cell
    }
    
    // Set selected cell behavior
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        selectedCell.contentView.backgroundColor = UIColor.greyMedium()
    }
    
    // Set deselected cell background
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let cellToDeSelect:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        cellToDeSelect.contentView.backgroundColor = UIColor.redDark()
    }
    
    // MARK: Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showSelectedTopTen" {
            if let destination = segue.destinationViewController as? SelectedTopTenController{
                //if let whiskeyIndex = tableView.indexPathForSelectedRow?.row {
                    destination.selectedTopTenName = "Selected"
                //}
            }
        }
    }

}