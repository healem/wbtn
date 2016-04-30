//
//  FavoritesDetailViewController.swift
//  Whisky By The Numbers
//
//  Created by Mike Healey on 4/15/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

class FavoritesDetailViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var notesContainer: UIView!
    
    var detailWhiskey: Whiskey!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name: UIKeyboardWillShowNotification, object: self.view.window)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name: UIKeyboardWillHideNotification, object: self.view.window)
    }
    
    func keyboardWillShow(sender: NSNotification) {
        let offset = notesContainer.frame.origin.y
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            self.view.frame.origin.y -= offset
        })
        //print(self.view.frame.origin.y)
    }
    
    func keyboardWillHide(sender: NSNotification) {
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            self.view.frame.origin.y = 0
        })
    }

    override func viewWillDisappear(animated: Bool) {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIKeyboardWillShowNotification, object: self.view.window)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIKeyboardWillHideNotification, object: self.view.window)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "FavoritesToWhiskeyDetailHeader" {
            if let destination = segue.destinationViewController as? WhiskeyDetailHeaderView{
                destination.detailWhiskey = detailWhiskey
            }
        }
    }
    
}