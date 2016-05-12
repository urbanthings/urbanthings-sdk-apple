//
//  TransitAgenciesRequest.swift
//  UrbanThingsAPI
//
//  Created by Mark Woollard on 08/05/2016.
//  Copyright © 2016 Fat Attitude. All rights reserved.
//

import Foundation

/// Defines a transit agencies request for a list of transit agencies
public protocol TransitAgenciesRequest : Request {
    
    associatedtype Result = TransitAgency
    
    /// The import source to obtain transit agencies for.
    var importSource:String { get }
}

/// Default implementation of `TransitAgenciesRequest` protocol provided by the API as standard means
/// of passing parameters to API request methods. You may provide your own implementation if needed to pass to the API
/// request methods.
public struct UTTransitAgenciesRequest : TransitAgenciesRequest {
    
    public typealias Result = [TransitAgency]
    public typealias Parser = (json:AnyObject?, logger:Logger) throws -> Result
    
    /// The import source to obtain transit agencies for.
    public let importSource:String
    
    /// Parser to use when processing response to the request
    public let parser:Parser
    
    /// Initialize an instance of `UTTransitAgenciesRequest`
    /// - parameters:
    ///   - importSource: The import source to obtain transit agencies for.
    ///   - parser: Optional custom parser to process the response from the server. If omitted standard parser will be used.
    public init(importSource:String, parser:Parser = urbanThingsParser) {
        self.parser = parser
        self.importSource = importSource
    }
}