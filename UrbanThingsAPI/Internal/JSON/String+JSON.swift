//
//  String+JSON.swift
//  UrbanThingsAPI
//
//  Created by Mark Woollard on 01/05/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//

import Foundation

/// Extend `String` to support JSONInitialization protocol for JSON parsing.
extension String : JSONInitialization {

    public init?(optional: Any?) throws {
        guard optional != nil else {
            return nil
        }
        try self.init(required: optional)
    }

    public init(required: Any?) throws {
        guard let value = required as? String else {
            throw UTAPIError(expected:String.self, not:required, file:#file, function:#function, line:#line)
        }
        self = value
    }

    public var hexValue: UInt32? {

        let trimmed = self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        if trimmed.characters.first == "#" {
            return trimmed.substring(from: trimmed.characters.index(after: trimmed.characters.startIndex)).hexValue
        } else if trimmed.hasPrefix("0x") || trimmed.hasPrefix("0X") {
            return trimmed.substring(from: trimmed.characters.index(trimmed.characters.startIndex, offsetBy:2)).hexValue
        }

        return UInt32(trimmed, radix:16)
    }
}
