//
//  SampleData.swift
//  AirbnbHomescreenSample
//
//  Created by Ky Nguyen on 1/27/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import Foundation
import UIKit

class SampleData {

    static let places = ["Ha Noi", "Hai Phong", "Trang An", "Hoi An", "Ho Chi Minh", "Bien Hoa", "My Tho", "Can Tho", "Tay Ninh", "Con Dao"]
    static let avatars = ["Avatar1", "Avatar2", "Avatar3", "Avatar4", "Avatar5", "Avatar6", "Avatar7", "Avatar8", "Avatar9", "Avatar10"]
    static let thumbnails = ["Place1", "Place2",  "Place3",  "Place4",  "Place5",  "Place6",  "Place7",  "Place8",  "Place9",  "Place10"]
    static let prices: [Int64] = [5000000, 15000000, 18000000,  2000000, 25000000, 15000000, 9000000, 1000000, 12000000, 6000000]
    static let shortDescriptions = ["New BedRm by C.Park",
        "Cozy & Private Floor of Brownstone",
        "AMAZING MANHATTAN SKYLIN",
        "Studio Apartment with King Bed",
        "Beautiful Midtown East",
        "Brooklyn Style - With a Balcony!!!",
        "Cozy Bedroom in Apartment",
        "Loft with Manhattan skyline view!",
        "Hell's Kitchen 1-Bdr. Apt. Share",
        "Green Room"]
    
    static func generateFavouriteList() -> [PlaceModel] {
        
        var favouriteList = [PlaceModel]()
        
        for _ in 0..<10 {
            
            let randomIndex = randomInt(10)
            let place = PlaceModel()
            place.placeName = places[randomIndex]
            place.avatarImage = UIImage(named: avatars[randomIndex])
            place.thumbnailImage = UIImage(named: thumbnails[randomIndex])
            place.unit = "PER NIGHT"
            place.currency = "VND"
            place.price = prices[randomIndex]
            place.shortDescription = shortDescriptions[randomIndex]
            
            favouriteList.append(place)
        }
        
        return favouriteList
    }
    
    static func generateRecentlyList() -> [PlaceModel] {
        
        var recentlyList = [PlaceModel]()
        
        for _ in 0..<10 {
            
            let randomIndex = randomInt(10)
            let place = PlaceModel()
            place.placeName = places[randomIndex]
            place.avatarImage = UIImage(named: avatars[randomIndex])
            place.thumbnailImage = UIImage(named: thumbnails[randomIndex])
            place.unit = "PER NIGHT"
            place.currency = "VND"
            place.price = prices[randomIndex]
            place.shortDescription = shortDescriptions[randomIndex]
            
            recentlyList.append(place)
        }
        
        return recentlyList;
    }
    
    static func generateSuggestionList() -> [PlaceModel] {
        
        var suggestionList = [PlaceModel]()
        for _ in 0..<10 {
            
            let randomIndex = randomInt(10)
            let place = PlaceModel()
            place.placeName = places[randomIndex]
            place.avatarImage = UIImage(named: avatars[randomIndex])
            place.thumbnailImage = UIImage(named: thumbnails[randomIndex])
            place.unit = "PER NIGHT"
            place.currency = "VND"
            place.price = prices[randomIndex]
            place.shortDescription = shortDescriptions[randomIndex]
            
            suggestionList.append(place)
        }
        
        return suggestionList
    }
    
    
    static func randomInt(max: UInt32) -> Int {
        
        return Int(arc4random_uniform(max))
    }
}