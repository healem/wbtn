//
//  FirstViewController.swift
//  Whisky By The Numbers
//
//  Created by Mike Healey on 4/13/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

class BlogViewController: UITableViewController {
    
    @IBOutlet var BlogTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configureTableView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    
    // MARK: Table View
    func configureTableView() {
        BlogTableView.estimatedRowHeight = 320.0
        BlogTableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("BlogCell", forIndexPath: indexPath) as! BlogCellView
        
        cell.BloggerIcon.image = UIImage(named: "whiskey")
        cell.BloggerName.text = "Snarky Dude"
        cell.BlogEntry.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
        
        // Set the card frame size
        cell.BlogCard.frame = CGRectMake(20, 20, self.view.bounds.width - 20, self.view.bounds.height - 20)
        
        return cell
    }


}

