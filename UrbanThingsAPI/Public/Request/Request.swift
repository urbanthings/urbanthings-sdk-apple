//
//  Request.swift
//  UrbanThingsAPI
//
//  Created by Mark Woollard on 08/05/2016.
//  Copyright © 2016 Fat Attitude. All rights reserved.
//

import Foundation

/// Request defines the protocol all requests must implement. All supported requests are 
/// extensions of this protocol.
public protocol Request {

    /// The type of Result expected in response to the request
    associatedtype Result
    
    /// Parser to use when processing response to the request
    var parser:(json:AnyObject?, logger:Logger) throws -> Result { get }
}