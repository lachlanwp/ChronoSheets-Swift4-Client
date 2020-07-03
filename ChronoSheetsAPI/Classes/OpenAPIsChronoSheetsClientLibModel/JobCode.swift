//
// JobCode.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct JobCode: Codable { 


    /** The ID of the job code (not the code itself) */
    public var id: Int?
    /** The job code itself */
    public var code: String?
    /** The name of the client */
    public var client: String?
    /** The ID of the client */
    public var clientId: Int?
    /** The name of the project */
    public var project: String?
    /** The ID of the project */
    public var projectId: Int?
    /** Your organisation ID */
    public var organisationId: Int?
    /** A flag indicating whether or not the job code has been marked as deleted */
    public var isDeleted: Bool?

    public init(id: Int?, code: String?, client: String?, clientId: Int?, project: String?, projectId: Int?, organisationId: Int?, isDeleted: Bool?) {
        self.id = id
        self.code = code
        self.client = client
        self.clientId = clientId
        self.project = project
        self.projectId = projectId
        self.organisationId = organisationId
        self.isDeleted = isDeleted
    }

    public enum CodingKeys: String, CodingKey { 
        case id = "Id"
        case code = "Code"
        case client = "Client"
        case clientId = "ClientId"
        case project = "Project"
        case projectId = "ProjectId"
        case organisationId = "OrganisationId"
        case isDeleted = "IsDeleted"
    }

}
