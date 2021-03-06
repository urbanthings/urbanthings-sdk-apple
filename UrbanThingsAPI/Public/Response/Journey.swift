//
//  Journey.swift
//  UrbanThingsAPI
//
//  Created by Mark Woollard on 26/04/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//

import Foundation

/// `Journey` defines a journey that fulfills a directions request
public protocol Journey {
    /// Arrival time for the journey.
    var arrivalTime:Date? { get }
    /// Departure time for the journey.
    var departureTime:Date? { get }
    /// Summary text for the journey with HTML formatting.
    var summaryHTML:String? { get }
    /// Duration of the journey in seconds if available.
    var duration:UInt? { get }
    /// Array of JourneyLeg instances that make up the journey.
    var legs:[JourneyLeg] { get }
    /// Place point ID of the place of origin for the journey.
    var originPlacePointID:String? { get }
    /// Place point ID of the destination for the journey.
    var destinationPlacePointID:String? { get }
}
