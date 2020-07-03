//
// UpdateOrganisationResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UpdateOrganisationResponse: Codable { 


    public var validationErrors: [String]?

    public init(validationErrors: [String]?) {
        self.validationErrors = validationErrors
    }

    public enum CodingKeys: String, CodingKey { 
        case validationErrors = "ValidationErrors"
    }

}
