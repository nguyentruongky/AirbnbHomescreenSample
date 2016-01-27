//
//  PlaceCategoryCell.swift
//  AirbnbHomescreenSample
//
//  Created by Ky Nguyen on 1/27/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import UIKit

class PlaceModel : NSObject {
    
    var placeName = ""
    var shortDescription = ""
    var price: Int64 = 0
    var currency = ""
    var unit = ""
    var thumbnailImage: UIImage?
    var avatarImage: UIImage?
    var didWish = false
    
}

class PlaceCategoryCell: UITableViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    @IBOutlet weak var sectionLabel: UILabel!
    var placeList = [PlaceModel]()
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return placeList.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PlaceCell", forIndexPath: indexPath) as! PlaceCollectionViewCell
        
        cell.setupView()
        
        let place = placeList[indexPath.row]
        cell.thumbnailImageView.image = place.thumbnailImage
        cell.avatarImageView.image = place.avatarImage
        cell.priceLabel.text = String(place.price)
        cell.currencyLabel.text = place.currency
        cell.unitLabel.text = place.unit
        cell.placeNameLabel.text = place.placeName
        cell.placeDescriptionLabel.text = place.shortDescription
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: 300, height: 350)
    }
}
