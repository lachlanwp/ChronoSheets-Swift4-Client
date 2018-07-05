//
// CSInsertUserResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CSInsertUserResponse: Codable {

    public var organisationId: Int?
    public var userId: Int?
    public var validationErrors: [String]?


    
    public init(organisationId: Int?, userId: Int?, validationErrors: [String]?) {
        self.organisationId = organisationId
        self.userId = userId
        self.validationErrors = validationErrors
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(organisationId, forKey: "OrganisationId")
        try container.encodeIfPresent(userId, forKey: "UserId")
        try container.encodeIfPresent(validationErrors, forKey: "ValidationErrors")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        organisationId = try container.decodeIfPresent(Int.self, forKey: "OrganisationId")
        userId = try container.decodeIfPresent(Int.self, forKey: "UserId")
        validationErrors = try container.decodeIfPresent([String].self, forKey: "ValidationErrors")
    }
}
