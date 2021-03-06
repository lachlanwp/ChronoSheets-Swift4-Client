//
// CSUpdateUserResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CSUpdateUserResponse: Codable {

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

