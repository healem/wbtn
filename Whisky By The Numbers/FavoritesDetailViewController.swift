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
    @IBOutlet weak var whiskeyIcon: UIImageView!
    @IBOutlet weak var whiskeyTitle: UILabel!
    @IBOutlet weak var ratingSlider: UISlider!
    @IBOutlet weak var styleValue: UILabel!
    @IBOutlet weak var proofValue: UILabel!
    @IBOutlet weak var priceValue: UILabel!
    @IBOutlet weak var scoreValue: UILabel!
    @IBOutlet weak var valueValue: UILabel!
    @IBOutlet weak var notesBox: UITextView!
    
    var detailWhiskey: Whiskey!
    
    override func viewWillAppear(animated: Bool) {
        configureView();
    }
    
    func configureView() {
        if let detailWhiskey = detailWhiskey {
                whiskeyIcon.image = UIImage(named: detailWhiskey.image)
                title = detailWhiskey.name
                whiskeyTitle.text = detailWhiskey.name
                ratingSlider.value = 4.0
                styleValue.text = detailWhiskey.style
                proofValue.text = detailWhiskey.proof.toString()
                priceValue.text = detailWhiskey.price.toString()
                scoreValue.text = detailWhiskey.score.toString()
                valueValue.text = detailWhiskey.value.toString()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set Notes box border appearance
        notesBox.layer.cornerRadius = 5.0
        notesBox.layer.borderWidth = 0.5
        notesBox.layer.borderColor = UIColor.redMedium().CGColor
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name: UIKeyboardWillShowNotification, object: self.view.window)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name: UIKeyboardWillHideNotification, object: self.view.window)
    }
    
    func keyboardWillShow(sender: NSNotification) {
        let userInfo: [NSObject : AnyObject] = sender.userInfo!
        let keyboardSize: CGSize = userInfo[UIKeyboardFrameBeginUserInfoKey]!.CGRectValue.size
        let offset: CGSize = userInfo[UIKeyboardFrameEndUserInfoKey]!.CGRectValue.size
        
        if keyboardSize.height == offset.height {
            if self.view.frame.origin.y == 0 {
                UIView.animateWithDuration(0.1, animations: { () -> Void in
                    self.view.frame.origin.y -= keyboardSize.height
                })
            }
        } else {
            UIView.animateWithDuration(0.1, animations: { () -> Void in
                self.view.frame.origin.y += keyboardSize.height - offset.height
            })
        }
        //print(self.view.frame.origin.y)
    }
    
    func keyboardWillHide(sender: NSNotification) {
        let userInfo: [NSObject : AnyObject] = sender.userInfo!
        let keyboardSize: CGSize = userInfo[UIKeyboardFrameBeginUserInfoKey]!.CGRectValue.size
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y += keyboardSize.height
        }
        //print(self.view.frame.origin.y)
    }
    
    override func viewWillDisappear(animated: Bool) {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIKeyboardWillShowNotification, object: self.view.window)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIKeyboardWillHideNotification, object: self.view.window)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}