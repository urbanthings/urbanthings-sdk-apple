//
//  TransitJourneyLeg.swift
//  UrbanThingsAPI
//
//  Created by Mark Woollard on 09/05/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//

import Foundation

/// `TransitJourneyLeg` protocol extends `JourneyLeg` to add details specific to a journey leg taken by transit service such as bus or train.
public protocol TransitJourneyLeg : JourneyLeg {
    
    /// An object containing details of the public transportation Route to which this leg's Trip (see LinkedTransitTripInfo) belongs, if known. For example the '326 bus service'.
    var linkedTransitRouteInfo: TransitRouteInfo? { get }
    /// An object that contains details of the public transportation Trip that this leg forms part of, if known.
    var linkedTransitTripInfo: TransitTripInfo? { get }
    /// A list of stops that will be called at en-route, if known.
    var scheduledStopCalls: [TransitScheduledCall]? { get }
    
}
