//
// CSSaveVehicleRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Fields for saving an existing Vehicle */

open class CSSaveVehicleRequest: Codable {

    /** The Id of the Vehicle that is being updated */
    public var id: Int?
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
    /** Whether or not this Vehicle is to be marked as deleted */
    public var isDeleted: Bool?


    
    public init(id: Int?, name: String?, costPerKilometer: Double?, make: String?, model: String?, year: String?, licencePlateNumber: String?, linkedOrgGroupIds: [Int]?, isDeleted: Bool?) {
        self.id = id
        self.name = name
        self.costPerKilometer = costPerKilometer
        self.make = make
        self.model = model
        self.year = year
        self.licencePlateNumber = licencePlateNumber
        self.linkedOrgGroupIds = linkedOrgGroupIds
        self.isDeleted = isDeleted
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "Id")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(costPerKilometer, forKey: "CostPerKilometer")
        try container.encodeIfPresent(make, forKey: "Make")
        try container.encodeIfPresent(model, forKey: "Model")
        try container.encodeIfPresent(year, forKey: "Year")
        try container.encodeIfPresent(licencePlateNumber, forKey: "LicencePlateNumber")
        try container.encodeIfPresent(linkedOrgGroupIds, forKey: "LinkedOrgGroupIds")
        try container.encodeIfPresent(isDeleted, forKey: "IsDeleted")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(Int.self, forKey: "Id")
        name = try container.decodeIfPresent(String.self, forKey: "Name")
        costPerKilometer = try container.decodeIfPresent(Double.self, forKey: "CostPerKilometer")
        make = try container.decodeIfPresent(String.self, forKey: "Make")
        model = try container.decodeIfPresent(String.self, forKey: "Model")
        year = try container.decodeIfPresent(String.self, forKey: "Year")
        licencePlateNumber = try container.decodeIfPresent(String.self, forKey: "LicencePlateNumber")
        linkedOrgGroupIds = try container.decodeIfPresent([Int].self, forKey: "LinkedOrgGroupIds")
        isDeleted = try container.decodeIfPresent(Bool.self, forKey: "IsDeleted")
    }
}
