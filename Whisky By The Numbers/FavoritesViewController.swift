//
//  FavoritesViewController.swift
//  Whisky By The Numbers
//
//  Created by Mike Healey on 4/15/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

class FavoritesViewController: UITableViewController {
    
    var detailViewController: FavoritesDetailViewController? = nil
    var whiskies = [Whiskey]()
    var filteredWhiskies = [Whiskey]()
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the Search Controller
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        definesPresentationContext = true
        searchController.dimsBackgroundDuringPresentation = false
        
        // Setup the Scope Bar
        tableView.tableHeaderView = searchController.searchBar
        
        whiskies = [
            Whiskey(score:"51", value:"51", name:"Whiskey 1"),
            Whiskey(score:"51", value:"51", name:"Whiskey 2"),
            Whiskey(score:"51", value:"51", name:"Whiskey 3"),
            Whiskey(score:"51", value:"51", name:"Whiskey 4"),
            Whiskey(score:"51", value:"51", name:"Whiskey 5"),
            Whiskey(score:"51", value:"51", name:"Whiskey 6"),
            Whiskey(score:"51", value:"51", name:"Whiskey 7"),
            Whiskey(score:"51", value:"51", name:"Whiskey 8"),
            Whiskey(score:"51", value:"51", name:"Whiskey 9")
        ]
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Table View
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchController.active && searchController.searchBar.text != "" {
            return filteredWhiskies.count
        }
        return whiskies.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let whiskey: Whiskey
        if searchController.active && searchController.searchBar.text != "" {
            whiskey = filteredWhiskies[indexPath.row]
        } else {
            whiskey = whiskies[indexPath.row]
        }
        cell.textLabel!.text = whiskey.name
        cell.detailTextLabel!.text = whiskey.name
        return cell
    }
    
    func filterContentForSearchText(searchText: String, scope: String = "All") {
        filteredWhiskies = whiskies.filter({( whiskey : Whiskey) -> Bool in
            let categoryMatch = (scope == "All") || (whiskey.name == scope)
            return categoryMatch && whiskey.name.lowercaseString.containsString(searchText.lowercaseString)
        })
        tableView.reloadData()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let whiskey: Whiskey
                if searchController.active && searchController.searchBar.text != "" {
                    whiskey = filteredWhiskies[indexPath.row]
                } else {
                    whiskey = whiskies[indexPath.row]
                }
                let controller = (segue.destinationViewController as! UINavigationController).topViewController as! FavoritesDetailViewController
                controller.detailWhiskey = whiskey
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem()
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
}

extension FavoritesViewController: UISearchBarDelegate {
    // UISearchBar Delegate
    func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        filterContentForSearchText(searchBar.text!, scope: searchBar.scopeButtonTitles![selectedScope])
    }
}

extension FavoritesViewController: UISearchResultsUpdating {
    // UISearchResultsUpdating Delegate
    func updateSearchResultsForSearchController(searchController: UISearchController) {
    }
}
