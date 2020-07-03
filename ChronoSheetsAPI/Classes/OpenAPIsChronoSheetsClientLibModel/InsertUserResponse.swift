//
// InsertUserResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct InsertUserResponse: Codable { 


    public var organisationId: Int?
    public var userId: Int?
    public var validationErrors: [String]?

    public init(organisationId: Int?, userId: Int?, validationErrors: [String]?) {
        self.organisationId = organisationId
        self.userId = userId
        self.validationErrors = validationErrors
    }

    public enum CodingKeys: String, CodingKey { 
        case organisationId = "OrganisationId"
        case userId = "UserId"
        case validationErrors = "ValidationErrors"
    }

}
