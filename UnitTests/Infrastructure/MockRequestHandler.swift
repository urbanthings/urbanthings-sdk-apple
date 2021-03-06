//
//  MockRequestHandler.swift
//  UrbanThingsAPI
//
//  Created by Mark Woollard on 11/05/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//

import Foundation
@testable import UTAPI

public struct MockRequest: UrbanThingsAPIRequest {
    public func cancel() {
    }
}

class MockRequestHandler: RequestHandler {

    let data: NSData?
    let json: AnyObject?

    init(jsonFile: String) throws {
        if let path = NSBundle(forClass: MockRequestHandler.self).pathForResource(jsonFile, ofType: "json") {
            data = NSData(contentsOfFile: path)
            if let data = data {
                json = try NSJSONSerialization.JSONObjectWithData(data, options: [])
            } else {
                json = nil
            }
        } else {
            data = nil
            json = nil
        }
    }

    func makeRequest(request: NSURLRequest, logger: Logger, completion: (NSData?, NSURLResponse?, ErrorType?) -> Void) -> UrbanThingsAPIRequest {
        let response = NSHTTPURLResponse(URL: request.URL!, statusCode: data != nil ? 200:404, HTTPVersion: "1.1", headerFields: ["Content-Type" : "application/json"])
        completion(data, response, nil)
        return MockRequest()
    }
}
