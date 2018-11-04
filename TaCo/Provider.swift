//
//  Provider.swift
//  TaCo
//
//  Created by Saeed Rahman on 2/11/2018.
//  Copyright © 2018 Thomas Ng. All rights reserved.
//

import UIKit

class Provider {
    
    //MARK: Properties
    
    struct Person {
        var profileImage: UIImage?
        var firstName: String
        var lastName: String
        var interests = [String]()
        
        //MARK: Initialisation
        
        init?(profileImage: UIImage?, firstName: String, lastName: String, interests: [String]) {
            
            // The providers first name must not be empty
            guard !firstName.isEmpty else {
                return nil
            }
            
            // Initialize properties
            self.profileImage = profileImage
            self.firstName = firstName
            self.lastName = lastName
            self.interests = interests
        }
    }
}
