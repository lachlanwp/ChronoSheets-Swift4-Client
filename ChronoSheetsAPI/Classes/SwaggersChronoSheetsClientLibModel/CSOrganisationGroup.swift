//
// CSOrganisationGroup.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CSOrganisationGroup: Codable {

    public var _id: Int?
    public var organisationId: Int?
    public var organisationGroupName: String?
    public var isDeleted: Bool?

    public init(_id: Int?, organisationId: Int?, organisationGroupName: String?, isDeleted: Bool?) {
        self._id = _id
        self.organisationId = organisationId
        self.organisationGroupName = organisationGroupName
        self.isDeleted = isDeleted
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "Id"
        case organisationId = "OrganisationId"
        case organisationGroupName = "OrganisationGroupName"
        case isDeleted = "IsDeleted"
    }


}

