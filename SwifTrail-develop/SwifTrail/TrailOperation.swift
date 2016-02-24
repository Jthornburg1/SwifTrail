//
//  TrailOperation.swift
//  SwifTrail
//
//  Created by Jon Thornburg on 2/24/16.
//  Copyright © 2016 jonathan thornburg. All rights reserved.
//

import Foundation

class TrailOperation: NSOperation {
    let city: String
    private let handler:(resultData: NSData!, error: NSError!) -> Void
    
    init(query: String, handler:(resultData: NSData!, error: NSError!) -> Void) {
        self.city = query
        self.handler = handler
    }
    override func main() {
        let url = "https://outdoor-data-api.herokuapp.com/api.json?api_key=d6d33ee90666c461d901c731cc104b79&q[city_cont]=\(self.city)"
        let request = HttpRequest.createRequest(url)
        
        HttpWrapperImpl.sendRequest(request, completion: {(data: NSData!, error: NSError!) in
            self.handler(resultData: data, error: error)
        })
    }
}
