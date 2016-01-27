//
//  HeaderCell.swift
//  AirbnbHomescreenSample
//
//  Created by Ky Nguyen on 1/27/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import UIKit

class HeaderCell: UITableViewCell {

    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var coverImageView: UIImageView!
    
    func setupView() {
        
        searchButton.createCircleShape()
    }
}
