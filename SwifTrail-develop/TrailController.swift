 //
//  TrailController.swift
//  SwifTrail
//
//  Created by jonathan thornburg on 11/24/15.
//  Copyright © 2015 jonathan thornburg. All rights reserved.
//

import UIKit
import Foundation

class TrailController: NSObject {
    
    let defaultSession = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
    var dataTask: NSURLSessionDataTask?
    
    func trailsByCity(var city: String, completion: (NSArray) -> Void)    {
        city = city.stringByReplacingOccurrencesOfString(" ", withString: "+")
        city = city.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!
        
        let urlString = "https://outdoor-data-api.herokuapp.com/api.json?api_key=d6d33ee90666c461d901c731cc104b79&q[city_cont]=" + city
        
        let url = NSURL(string: urlString)

        let session = NSURLSession.sharedSession()
        
        var convertedTrails = []
        
        let task = session.dataTaskWithURL(url!, completionHandler: {(data, reponse, error) in
            print("Task completed")
            do {
            convertedTrails = try! NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments).objectForKey("places") as! NSArray
            }
            
            let trails = convertedTrails 
            
            completion(trails)
        })
        task.resume()
    }
    
    
    
    

}
// var allQuestions = [String : AnyObject]()
// 
// if let data = NSData(contentsOfFile: JSONLoader.jsonFileURLString()) {
//    do {
//        allQuestions = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as! [String : AnyObject]
//    } catch {
//        print("Error: data could not be serialized")
//    }
// } else {
//    print("Error: no data found at jsonFileURLString")
// }