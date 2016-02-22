//
//  Trail.swift
//  SwifTrail
//
//  Created by jonathan thornburg on 11/30/15.
//  Copyright © 2015 jonathan thornburg. All rights reserved.
//

import Foundation

public class Trail: NSObject {
    
    var latitude: NSNumber
    let longitude: NSNumber
    let name: String
    let city: String
    let state: String
    let country: String
    let described: String
    let activities: String
    let thumbnail: String
    
    
    
    public init(dict : [String : AnyObject])
    {
        if let value = dict["lat"] as? NSNumber
        {
            latitude = value
        } else {
            latitude = 0.0
        }
        
        if let value = dict["lon"] as? NSNumber
        {
            longitude = value
        } else {
            longitude = 0.0
        }
        
        if let value = dict["name"] as? String
        {
            name = value
        } else {
            name = ""
        }
        
        if let value = dict["city"] as? String
        {
            city = value
        } else {
            city = ""
        }
        
        if let value = dict["state"] as? String
        {
            state = value
        } else {
            state = ""
        }
        
        if let value = dict["country"] as? String
        {
            country = value
        } else {
            country = ""
        }
        
        if let value = dict["description"] as? String
        {
            described = value
        } else {
            described = ""
        }
        
        if let value = dict["activities"] as? String
        {
            activities = value
        } else {
            activities = ""
        }
        
        if let value = dict["thumbnail"] as? String
        {
            thumbnail = value
        } else {
            thumbnail = ""
        }
    }







}
    
    
