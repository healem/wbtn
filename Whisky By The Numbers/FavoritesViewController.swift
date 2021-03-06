//
//  FavoritesViewController.swift
//  Whisky By The Numbers
//
//  Created by Mike Healey on 4/15/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

class FavoritesViewController: UITableViewController {
    
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
        
        // Generate test whiskies
        whiskies = [ self.generateWhiskeyForTest(0) ]
        for i in 1...20 {
            whiskies.append(self.generateWhiskeyForTest(i))
        }

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
        cell.detailTextLabel!.text = "Score: " + whiskey.score.toString() + " Value: " + whiskey.value.toString()
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
