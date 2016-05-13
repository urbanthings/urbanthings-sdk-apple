//
//  NSURL+Extensions.swift
//  UrbanThingsAPI
//
//  Created by Mark Woollard on 28/04/2016.
//  Copyright © 2016 Fat Attitude. All rights reserved.
//

import Foundation

extension NSURL {
    
    class func fromJSON(required required:AnyObject?) throws -> NSURL {
        guard let urlString = required as? String else {
            throw Error(jsonParseError:"Expected String, not \(required)", file:#file, function:#function, line:#line)
        }
        guard let url = NSURL(string:urlString) else {
            throw Error(jsonParseError:"Invalid url string \(urlString)", file:#file, function:#function, line:#line)
        }
        return url
    }
    
    class func fromJSON(optional optional:AnyObject?) throws -> NSURL? {
        guard optional != nil else {
            return nil
        }
        return try self.fromJSON(required: optional)
    }
}