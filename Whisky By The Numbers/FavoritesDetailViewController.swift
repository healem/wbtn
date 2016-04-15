//
//  FavoritesDetailViewController.swift
//  Whisky By The Numbers
//
//  Created by Mike Healey on 4/15/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

class FavoritesDetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    var detailWhiskey: Whiskey? {
        didSet {
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}