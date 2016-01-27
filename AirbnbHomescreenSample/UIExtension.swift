//
//  UIExtension.swift
//  AirbnbHomescreenSample
//
//  Created by Ky Nguyen on 1/27/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    func createRoundCorner(radius: CGFloat) {
        
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func createCircleShape() {
        
        createRoundCorner(self.frame.size.width / 2)
    }
}

