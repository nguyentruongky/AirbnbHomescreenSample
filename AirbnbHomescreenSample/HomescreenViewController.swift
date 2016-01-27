//
//  HomescreenViewController.swift
//  AirbnbHomescreenSample
//
//  Created by Ky Nguyen on 1/27/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import UIKit

class HomescreenViewController: UITableViewController {
        
    let sections = ["", "Recently View", "Favourite", "Suggestion"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sections.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            
            let cell = tableView.dequeueReusableCellWithIdentifier("HeaderCell", forIndexPath: indexPath) as! HeaderCell
            cell.setupView()
            return cell
        }
        else {
            
            let cell = tableView.dequeueReusableCellWithIdentifier("PlaceCategory", forIndexPath: indexPath) as! PlaceCategoryCell
            
            switch indexPath.row {
                
            case 1:
                cell.placeList = SampleData.generateRecentlyList()
                break
                
            case 2:
                cell.placeList = SampleData.generateFavouriteList()
                break
                
            case 3:
                cell.placeList = SampleData.generateSuggestionList()
                break
                
            default:
                break;
            }
            
            cell.sectionLabel.text = sections[indexPath.row];
            
            return cell
        }

    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 400
    }
}
