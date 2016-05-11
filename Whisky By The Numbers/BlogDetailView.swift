//
//  BlogDetailView.swift
//  Whiskey By The Numbers
//
//  Created by Mike Healey on 5/10/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

class BlogDetailView: UIViewController {
    
    @IBOutlet weak var BloggerDetailIcon: UIImageView!
    @IBOutlet weak var BloggerDetailName: UILabel!
    @IBOutlet weak var BlogDetailText: UITextView!
    
    // TODO
    @IBAction func ShareButton(sender: AnyObject) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        configureView();
    }
    
    func configureView() {
        self.view.backgroundColor = UIColor.redDark()
        BloggerDetailIcon.image = UIImage(named: "whiskey")
        BloggerDetailName.text = "Snarky Dude"
        BloggerDetailName.textColor = UIColor.orangeHighlightText()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        BlogDetailText.setContentOffset(CGPointZero, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
