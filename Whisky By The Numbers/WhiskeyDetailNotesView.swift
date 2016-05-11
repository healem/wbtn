//
//  WhiskeyDetailNotesView.swift
//  Whiskey By The Numbers
//
//  Created by Mike Healey on 4/29/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

class WhiskeyDetailNotesView: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var notesBox: UITextView!
    
    override func viewWillAppear(animated: Bool) {
        configureView();
    }
    
    func configureView() {
        self.view.backgroundColor = UIColor.redDark()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set Notes box border appearance
        notesBox.layer.cornerRadius = 5.0
        notesBox.layer.borderWidth = 1.0
        notesBox.layer.borderColor = UIColor.redMedium().CGColor
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        notesBox.setContentOffset(CGPointZero, animated: false)
    }

}
