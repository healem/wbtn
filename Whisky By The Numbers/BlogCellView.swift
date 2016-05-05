//
//  BlogCellView.swift
//  Whiskey By The Numbers
//
//  Created by Mike Healey on 5/2/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

class BlogCellView: UITableViewCell {
    
    @IBOutlet weak var BlogCard: UIView!
    @IBOutlet weak var BloggerIcon: UIImageView!
    @IBOutlet weak var BloggerName: UILabel!
    @IBOutlet weak var ShareButton: UIButton!
    @IBOutlet weak var MoreDetailButton: UIButton!
    @IBOutlet weak var BlogEntry: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // cell view appearance
        self.backgroundColor = UIColor.redDark()
        
        // set Notes box border appearance
        BlogEntry.layer.cornerRadius = 5.0
        BlogEntry.layer.borderWidth = 1.0
        BlogEntry.layer.borderColor = UIColor.redMedium().CGColor
        BlogEntry.layer.masksToBounds = true
        BlogEntry.layer.shadowOffset = CGSizeMake(-0.2, 0.2)
        BlogEntry.layer.shadowRadius = 5.0
        BlogEntry.layer.shadowColor = UIColor.redDark().CGColor
        BlogEntry.layer.shadowOpacity = 0.8
        BlogEntry.layer.shadowPath = UIBezierPath(rect: BlogEntry.bounds).CGPath
        
        // Cache the shadow
        BlogEntry.layer.shouldRasterize = true
        
        // card appearance
        BlogCard.backgroundColor = UIColor.redDarkBG()
        BlogCard.layer.masksToBounds = true
        BlogCard.layer.borderWidth = 1.0
        BlogCard.layer.borderColor = UIColor.redMedium().CGColor
        BlogCard.layer.cornerRadius = 1
        BlogCard.layer.shadowOffset = CGSizeMake(-0.5, 0.5)
        BlogCard.layer.shadowRadius = 5
        BlogCard.layer.shadowColor = UIColor.redMediumDark().CGColor
        BlogCard.layer.shadowOpacity = 0.8
        BlogCard.layer.shadowPath = UIBezierPath(rect: BlogCard.bounds).CGPath
        
        // Cache the shadow
        BlogCard.layer.shouldRasterize = true
        
        // Name text appearance
        BloggerName.textColor = UIColor.orangeHighlightText()
        
    }
    
}
