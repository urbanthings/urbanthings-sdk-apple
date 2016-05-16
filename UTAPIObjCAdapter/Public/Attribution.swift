//
//  Attribution.swift
//  UrbanThingsAPI
//
//  Created by Mark Woollard on 15/05/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//

import Foundation
import protocol UrbanThingsAPI.Attribution

@objc public protocol Attribution {
    /// An attribution label text for the data - clients MUST display either this label or the string contained at AttributionLabel to conform with the Terms and Conditions of using the API.
    var attributionLabel:String? { get }
    /// An attribution graphic for the data - clients MUST display either this label or the string contained at AttributionLabel to conform with the Terms and Conditions of using the API.
    var attributionImageURL:NSURL? { get }
    /// Optional guidance explaining how the AttributionText and AttributionImageURL should be displayed.
    var attributionNotes:String? { get }
}

@objc public class UTAttribution : NSObject, Attribution {
    
    let adapted:UrbanThingsAPI.Attribution
    
    public init(adapt:UrbanThingsAPI.Attribution) {
        self.adapted = adapt
    }
    
    public var attributionLabel:String? { return self.adapted.attributionLabel }
    public var attributionImageURL:NSURL? {return self.adapted.attributionImageURL }
    public var attributionNotes:String? { return self.adapted.attributionNotes }
}
