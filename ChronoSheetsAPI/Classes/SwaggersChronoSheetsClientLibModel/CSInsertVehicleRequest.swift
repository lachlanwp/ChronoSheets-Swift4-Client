//
// CSInsertVehicleRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Fields for inserting a new Vehicle */

public struct CSInsertVehicleRequest: Codable {

    /** The Name of the Vehicle */
    public var name: String?
    /** The fuel cost / running cost of the Vehicle, measured per kilometer */
    public var costPerKilometer: Double?
    /** The make of the Vehicle */
    public var make: String?
    /** The model of the Vehicle */
    public var model: String?
    /** The year the Vehicle was made */
    public var year: String?
    /** The Licence Plate Number of the Vehicle */
    public var licencePlateNumber: String?
    /** Optionally restrict this Vehicle to only be available to employees within these Organisation Groups */
    public var linkedOrgGroupIds: [Int]?

    public init(name: String?, costPerKilometer: Double?, make: String?, model: String?, year: String?, licencePlateNumber: String?, linkedOrgGroupIds: [Int]?) {
        self.name = name
        self.costPerKilometer = costPerKilometer
        self.make = make
        self.model = model
        self.year = year
        self.licencePlateNumber = licencePlateNumber
        self.linkedOrgGroupIds = linkedOrgGroupIds
    }

    public enum CodingKeys: String, CodingKey { 
        case name = "Name"
        case costPerKilometer = "CostPerKilometer"
        case make = "Make"
        case model = "Model"
        case year = "Year"
        case licencePlateNumber = "LicencePlateNumber"
        case linkedOrgGroupIds = "LinkedOrgGroupIds"
    }


}

