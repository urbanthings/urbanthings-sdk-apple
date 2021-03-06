//
//  DirectionsResponseStatus.swift
//  UrbanThingsAPI
//
//  Created by Mark Woollard on 26/04/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//

import Foundation

/// Defines status data for the response from a directions requests.
public protocol DirectionsResponseStatus {
    /// Status code
    var statusCode:Int { get }
    /// Error code
    var errorCode:Int { get }
    /// Error message string
    var errorMessage:String? { get }
}