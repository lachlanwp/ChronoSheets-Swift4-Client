//
// BasicGeofence.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** A basic geofence */
public struct BasicGeofence: Codable { 


    /** The ID of the geofence */
    public var geoFencingId: Int?
    /** The descriptive name of the geofence */
    public var name: String?

    public init(geoFencingId: Int?, name: String?) {
        self.geoFencingId = geoFencingId
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case geoFencingId = "GeoFencingId"
        case name = "Name"
    }

}
