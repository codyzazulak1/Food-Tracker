//
//  Meal.swift
//  FoodTracker
//
//  Created by Cody Zazulak on 2015-08-03.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

import UIKit

class Meal {
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int) {
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
