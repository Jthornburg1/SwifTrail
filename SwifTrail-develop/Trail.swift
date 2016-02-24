//
//  Trail.swift
//  SwifTrail
//
//  Created by Jon Thornburg on 2/24/16.
//  Copyright © 2016 jonathan thornburg. All rights reserved.
//

import Foundation

public struct Trail {
    var city: String?
    var state: String?
    var name: String?
    var lat: NSNumber?
    var long: NSNumber?
    var description: String?
    var activities: String?
    var thumbnail: String?
    var url: String?
    
    public init(dict: [String : AnyObject]) {
        if let city = dict["city"] as? String {
            self.city = city
        }
        
        if let state = dict["state"] as? String {
            self.state = state
        }
        
        if let name = dict["name"] as? String {
            self.name = name
        }
        
        if let lat = dict["lat"] as? NSNumber {
            self.lat = lat
        }
        
        if let long = dict["long"] as? NSNumber {
            self.long = long
        }
        
        if let description = dict["description"] as? String {
            self.description = description
        }
        
        if let activities = dict["activity_type_name"] as? String {
            self.activities = activities
        }
        
        if let thumbnail = dict["thumbnail"] as? String {
            self.thumbnail = thumbnail
        }
        
        if let url = dict["url"] as? String {
            self.url = url
        }


    }
    
}
