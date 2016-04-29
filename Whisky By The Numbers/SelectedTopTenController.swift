//
//  SelectedTopTenController.swift
//  Whiskey By The Numbers
//
//  Created by Mike Healey on 4/28/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

class SelectedTopTenController: UITableViewController {
    
    var selectedTopTenName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func generateWhiskeyForTest(index: Int) -> Whiskey{
        let whiskey = Whiskey(id:index, score:51, value:51, name:"Whiskey \(index)", style:"Misc", proof:110, price:30, sweet:1.75, sour:3.5, heat:3.75, smooth:1.75, finish:2, crisp:2, leather:1.75, wood:2, smoke:3, citrus:3.75, floral:2.75, fruit:1, complexity:2.75, drinkability:1, mouthfeel:3, image:"whiskey", notes:"Some verbose text here - asfghaleuglEFHAKJSDVNAUSINE UAGF ABSKJGBU A SBDGALSKHGBSDGJHB lkajbfdg lkjsdbfg sldfjgbsldfjgh sdlkgh ")
        
        return whiskey
    }
    
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
        return 6
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FinalSelectedCell", forIndexPath: indexPath)
        
        // Set label text and appearance
        cell.textLabel!.text = "Test Whiskey"
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
        if segue.identifier == "showTopTenDetail" {
            if let destination = segue.destinationViewController as? TopTenDetailController{
                //if let whiskeyIndex = tableView.indexPathForSelectedRow?.row {
                destination.selectedName = "Final"
                //}
            }
        }
    }
    
}