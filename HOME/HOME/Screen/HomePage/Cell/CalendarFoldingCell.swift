//
//  CalendarFoldingCell.swift
//  HOME
//
//  Created by TT Nguyen on 1/22/19.
//  Copyright © 2019 TT Nguyen. All rights reserved.
//

import UIKit
import FoldingCell

class CalendarFoldingCell: FoldingCell {
    
    
    @IBOutlet weak var mToday: UILabel!
    @IBOutlet weak var mDaysLeft: UILabel!
    
    @IBOutlet var mDaysLeftContainerView: UILabel!
    
    override func awakeFromNib() {
        foregroundView.layer.cornerRadius = 10
        foregroundView.layer.masksToBounds = true
        super.awakeFromNib()
        presentData()
    }
    
    func presentData() {
        if Date.daysLeft() == 0 {
            mDaysLeft.text = "Get room fees"
            mDaysLeftContainerView.text = "Get room fees"
        } else {
            let dayLeft = String(Date.daysLeft()) +  " days left"
            mDaysLeft.text = dayLeft
            mDaysLeftContainerView.text = dayLeft
            mToday.text = "Today: " + Date.getCurrentDate()
        }
    }
    
    override func animationDuration(_ itemIndex:NSInteger, type:FoldingCell.AnimationType)-> TimeInterval {
        let durations = [0.33, 0.26, 0.26] 
        return durations[itemIndex]
    }
    
    
}
