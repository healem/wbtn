//
//  WhiskeyDetailHeaderView.swift
//  Whiskey By The Numbers
//
//  Created by Mike Healey on 4/29/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

class WhiskeyDetailHeaderView: UIViewController {
    
    // MARK: Properties

    @IBOutlet weak var whiskeyIcon: UIImageView!
    @IBOutlet weak var whiskeyTitle: UILabel!
    @IBOutlet weak var ratingSlider: UISlider!
    @IBOutlet weak var styleValue: UILabel!
    @IBOutlet weak var proofValue: UILabel!
    @IBOutlet weak var priceValue: UILabel!
    @IBOutlet weak var scoreValue: UILabel!
    @IBOutlet weak var valueValue: UILabel!
    
    var detailWhiskey: Whiskey!
    
    override func viewWillAppear(animated: Bool) {
        configureView();
    }
    
    func configureView() {
        self.view.backgroundColor = UIColor.redDark()
        
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
    }

}