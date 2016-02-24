//
//  HttpRequest.swift
//  SwifTrail
//
//  Created by Jon Thornburg on 2/24/16.
//  Copyright © 2016 jonathan thornburg. All rights reserved.
//

import Foundation

public struct HttpRequest {
    static func createRequest(urlString: String) -> NSURLRequest {
        let url = NSURL(string: urlString)
        let request = NSMutableURLRequest(URL: url!)
        request.HTTPMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        return request
    }
}
