//
//  MeMe.swift
//  MeMeChallenge
//
//  Created by Laura Calinoiu on 05/08/15.
//  Copyright © 2015 Apress. All rights reserved.
//

import Foundation
import UIKit

class MeMe{
    var topComment: String
    var bottomComment: String
    let originalImg: UIImage!
    let memedImg: UIImage!
    
    init(top: String, bottom: String, origImage: UIImage, memedImg: UIImage){
        self.topComment = top
        self.bottomComment = bottom
        self.originalImg = origImage
        self.memedImg = memedImg
    }
}