//
// FleetVehicle.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct FleetVehicle: Codable { 


    public var id: Int?
    public var organisationId: Int?
    public var name: String?
    public var costPerKilometer: Double?
    public var make: String?
    public var model: String?
    public var year: String?
    public var licencePlateNumber: String?
    public var isDeleted: Bool?
    public var permittedEmployees: [Int]?

    public init(id: Int?, organisationId: Int?, name: String?, costPerKilometer: Double?, make: String?, model: String?, year: String?, licencePlateNumber: String?, isDeleted: Bool?, permittedEmployees: [Int]?) {
        self.id = id
        self.organisationId = organisationId
        self.name = name
        self.costPerKilometer = costPerKilometer
        self.make = make
        self.model = model
        self.year = year
        self.licencePlateNumber = licencePlateNumber
        self.isDeleted = isDeleted
        self.permittedEmployees = permittedEmployees
    }

    public enum CodingKeys: String, CodingKey { 
        case id = "Id"
        case organisationId = "OrganisationId"
        case name = "Name"
        case costPerKilometer = "CostPerKilometer"
        case make = "Make"
        case model = "Model"
        case year = "Year"
        case licencePlateNumber = "LicencePlateNumber"
        case isDeleted = "IsDeleted"
        case permittedEmployees = "PermittedEmployees"
    }

}
