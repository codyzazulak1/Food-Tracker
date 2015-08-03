//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Cody Zazulak on 2015-08-03.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    var rating = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    var ratingButtons = [UIButton]()
    var spacing = 5
    var stars = 5
    
    required init(coder aDecoder: (NSCoder!)) {
        super.init(coder: aDecoder)
        
        let emptyStarImage = UIImage(named: "emptyStar")
        let filledStarImage = UIImage(named: "filledStar")
        
        for _ in 0..<stars {
            let button = UIButton()
            
            button.setImage(emptyStarImage, forState: .Normal)
            button.setImage(filledStarImage, forState: .Selected)
//            button.setImage(filledStarImage, forState: [.Highlighted, .Selected])
            
            button.adjustsImageWhenHighlighted = false
            
            button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
            ratingButtons += [button]
            addSubview(button)
        }
    }
    
    override func layoutSubviews() {
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        
        // Offset each button's origin by the length of the button plus spacing.
        for (index, button) in enumerate(ratingButtons) {
            buttonFrame.origin.x = CGFloat(index * (buttonSize + spacing))
            button.frame = buttonFrame
        }
        updateButtonSelectionStates()
    }
    
    func ratingButtonTapped(button: UIButton) {
        rating = find(ratingButtons, button)! + 1
        updateButtonSelectionStates()
    }
    
    func updateButtonSelectionStates() {
        for (index, button) in enumerate(ratingButtons) {
            // If the index of a button is less than the rating, that button should be selected.
            button.selected = index < rating
        }
    }
}
