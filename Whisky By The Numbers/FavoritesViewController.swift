//
//  FavoritesViewController.swift
//  Whisky By The Numbers
//
//  Created by Mike Healey on 4/15/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

class FavoritesViewController: UITableViewController {
    
    //var detailViewController: FavoritesDetailViewController? = nil
    var whiskies = [Whiskey]()
    var filteredWhiskies = [Whiskey]()
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the Search Controller
        searchController.searchResultsUpdater = self
        definesPresentationContext = true
        searchController.dimsBackgroundDuringPresentation = false
        
        // Setup the Scope Bar
        tableView.tableHeaderView = searchController.searchBar
        
        whiskies = [
            Whiskey(score:"51", value:"51", name:"Whiskey 1", style:"Misc", proof:"110", price:"$30", sweet:"1.75", sour:"3.5", heat:"3.75", smooth:"1.75", finish:"2", crisp:"2", image:"whiskey"),
            Whiskey(score:"51", value:"51", name:"Whiskey 2", style:"Misc", proof:"110", price:"$30", sweet:"1.75", sour:"3.5", heat:"3.75", smooth:"1.75", finish:"2", crisp:"2", image:"whiskey"),
            Whiskey(score:"51", value:"51", name:"Whiskey 3", style:"Misc", proof:"110", price:"$30", sweet:"1.75", sour:"3.5", heat:"3.75", smooth:"1.75", finish:"2", crisp:"2", image:"whiskey"),
            Whiskey(score:"51", value:"51", name:"Whiskey 4", style:"Misc", proof:"110", price:"$30", sweet:"1.75", sour:"3.5", heat:"3.75", smooth:"1.75", finish:"2", crisp:"2", image:"whiskey"),
            Whiskey(score:"51", value:"51", name:"Whiskey 5", style:"Misc", proof:"110", price:"$30", sweet:"1.75", sour:"3.5", heat:"3.75", smooth:"1.75", finish:"2", crisp:"2", image:"whiskey"),
            Whiskey(score:"51", value:"51", name:"Whiskey 6", style:"Misc", proof:"110", price:"$30", sweet:"1.75", sour:"3.5", heat:"3.75", smooth:"1.75", finish:"2", crisp:"2", image:"whiskey"),
            Whiskey(score:"51", value:"51", name:"Whiskey 7", style:"Misc", proof:"110", price:"$30", sweet:"1.75", sour:"3.5", heat:"3.75", smooth:"1.75", finish:"2", crisp:"2", image:"whiskey"),
            Whiskey(score:"51", value:"51", name:"Whiskey 8", style:"Misc", proof:"110", price:"$30", sweet:"1.75", sour:"3.5", heat:"3.75", smooth:"1.75", finish:"2", crisp:"2", image:"whiskey"),
            Whiskey(score:"51", value:"51", name:"Whiskey 9", style:"Misc", proof:"110", price:"$30", sweet:"1.75", sour:"3.5", heat:"3.75", smooth:"1.75", finish:"2", crisp:"2", image:"whiskey")
        ]
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
        if searchController.active && searchController.searchBar.text != "" {
            return whiskies.count
        }
        return whiskies.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let whiskey: Whiskey
        whiskey = whiskies[indexPath.row]
        
        // Set label text and appearance
        cell.textLabel!.text = whiskey.name
        cell.textLabel?.textColor = UIColor.orangeHighlightText()
        
        // Set detail text and appearance
        cell.detailTextLabel!.text = "Score: " + whiskey.score + " Value: " + whiskey.value
        cell.detailTextLabel?.textColor = UIColor.orangeHighlightText()
        
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
        if segue.identifier == "showFavoritesDetail" {
            if let destination = segue.destinationViewController as? FavoritesDetailViewController{
                if let whiskeyIndex = tableView.indexPathForSelectedRow?.row {
                    destination.detailWhiskey = whiskies[whiskeyIndex]
                }
            }
        }
    }
}

//extension FavoritesViewController: UISearchBarDelegate {
    // UISearchBar Delegate
//    func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
//        filterContentForSearchText(searchBar.text!, scope: searchBar.scopeButtonTitles![selectedScope])
//    }
//}

extension FavoritesViewController: UISearchResultsUpdating {
    // UISearchResultsUpdating Delegate
    func updateSearchResultsForSearchController(searchController: UISearchController) {
    }
}
