//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Cody Zazulak on 2015-08-03.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
