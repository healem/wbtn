//
//  BlogEntryCellView.swift
//  Whiskey By The Numbers
//
//  Created by Mike Healey on 5/4/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

class BlogEntryCellView: UICollectionViewCell {
    
    @IBOutlet weak var BloggerIcon: UIImageView!
    @IBOutlet weak var BloggerName: UILabel!
    @IBOutlet weak var BlogText: UITextView!
    @IBOutlet weak var ShareButton: UIButton!
    @IBOutlet weak var MoreDetailButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Set bloggerName appearance
        BloggerName.textColor = UIColor.orangeHighlightText()
    
        // set Notes box border appearance
        BlogText.layer.cornerRadius = 5.0
        BlogText.layer.borderWidth = 1.0
        BlogText.layer.borderColor = UIColor.redMedium().CGColor
        BlogText.layer.masksToBounds = true
        //BlogText.layer.shadowOffset = CGSizeMake(-0.2, 0.2)
        //BlogText.layer.shadowRadius = 5.0
        //BlogText.layer.shadowColor = UIColor.redDark().CGColor
        //BlogText.layer.shadowOpacity = 0.8
        //BlogText.layer.shadowPath = UIBezierPath(rect: BlogText.bounds).CGPath
        
        // Cache the shadow
        //BlogText.layer.shouldRasterize = true
        
        // card appearance
        self.backgroundColor = UIColor.redDark()
        self.layer.masksToBounds = false
        self.layer.borderWidth = 1.0
        //self.layer.borderColor = UIColor.blackColor().CGColor
        self.layer.cornerRadius = 5
        self.layer.shadowOffset = CGSizeMake(-0.2, 0.2)
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.redDark().CGColor
        self.layer.shadowOpacity = 0.8
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).CGPath
        
        // Cache the shadow
        self.layer.shouldRasterize = true
    }
}
