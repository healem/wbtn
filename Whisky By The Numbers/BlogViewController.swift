//
//  FirstViewController.swift
//  Whisky By The Numbers
//
//  Created by Mike Healey on 4/13/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

class BlogViewController: UIViewController {

    @IBOutlet weak var topTextBox: UITextView!
    @IBOutlet weak var middleTextBox: UITextView!
    @IBOutlet weak var bottomTextBox: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for view in [ topTextBox, middleTextBox, bottomTextBox]{
            view.layer.borderColor = UIColor.redMedium().CGColor
            view.layer.borderWidth = 0.5
            view.layer.cornerRadius = 5.0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

