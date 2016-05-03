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
        
        // set Notes box border appearance
        BlogEntry.layer.cornerRadius = 5.0
        BlogEntry.layer.borderWidth = 1.0
        BlogEntry.layer.borderColor = UIColor.redMedium().CGColor
        
        BlogCard.layer.masksToBounds = false
        BlogCard.layer.cornerRadius = 1
        BlogCard.layer.shadowOffset = CGSizeMake(-0.2, 0.2)
        BlogCard.layer.shadowRadius = 1
        BlogCard.layer.shadowColor = UIColor.redMediumDark().CGColor
        BlogCard.layer.shadowOpacity = 0.8
        BlogCard.layer.shadowPath = UIBezierPath(rect: BlogCard.bounds).CGPath
        
        BloggerName.textColor = UIColor.orangeHighlightText()
        
        // Cache the shadow
        BlogCard.layer.shouldRasterize = true
        
    }
    
}
