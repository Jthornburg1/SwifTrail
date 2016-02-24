//
//  TrailQueue.swift
//  SwifTrail
//
//  Created by Jon Thornburg on 2/24/16.
//  Copyright © 2016 jonathan thornburg. All rights reserved.
//

import Foundation

struct TrailQueue {
    let downloadQueue: NSOperationQueue = {
        var queue = NSOperationQueue()
        queue.name = "Download Queue"
        queue.maxConcurrentOperationCount = 1
        return queue
    }()
    
    func getTrails(city: String, completionHandler: (resultData: NSData!, error: NSError!) -> Void) {
        print("getTrails")
        
        let operation = TrailOperation(query: city, handler: completionHandler)
        downloadQueue.addOperation(operation)
    }
}


