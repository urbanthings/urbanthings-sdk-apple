//
//  TransitTrip.swift
//  UrbanThingsAPI
//
//  Created by Mark Woollard on 15/05/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//

import Foundation
import protocol UrbanThingsAPI.TransitTrip

/// `TransitTrip` details a transit route and one of the scheduled times that the route runs.
@objc public protocol TransitTrip {
    /// Basic information about this trip - agency code, vehicle Headsign, etc.
    var info:TransitTripInfo { get }
    /// The dates on which this trip operates.
    var calendar:TransitCalendar? { get }
    /// The stops that the vehicle calls at on this trip, and the times at which it does so.
    var stopCalls:[TransitStopScheduledCallSummary] { get }
    /// Google polyline string representing the route
    var polyline:String? { get }
}

@objc public class UTTransitTrip : NSObject, TransitTrip {
    
    let adapted: UrbanThingsAPI.TransitTrip
    
    public init(adapt: UrbanThingsAPI.TransitTrip) {
        self.adapted = adapt
        self.info = UTTransitTripInfo(adapt: adapt.info)!
        self.calendar = UTTransitCalendar(adapt: adapt.calendar)
        self.stopCalls = adapt.stopCalls.map { UTTransitStopScheduledCallSummary(adapt: $0) }
    }
    
    public let info:TransitTripInfo
    public let calendar:TransitCalendar?
    public let stopCalls:[TransitStopScheduledCallSummary]
    public var polyline:String? { return self.adapted.polyline }
}