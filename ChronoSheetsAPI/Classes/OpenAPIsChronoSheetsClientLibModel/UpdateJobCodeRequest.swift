//
// UpdateJobCodeRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Fields used to update an existing JobCode */
public struct UpdateJobCodeRequest: Codable { 


    /** The Id of the JobCode to be updated */
    public var id: Int?
    /** The new JobCode to be set */
    public var code: String?
    /** The Id of the Project to be associated to */
    public var projectId: Int?
    /** The Id of the Client to be associated to */
    public var clientId: Int?
    /** A collection of Task Ids to be available when choosing this JobCode */
    public var linkedTaskIds: [Int]?
    /** Restrict the access to this JobCode by specifying which Organisation Groups can have access.  Only employees in these Organisation Groups will be able to access this JobCode */
    public var linkedOrgGroupIds: [Int]?
    /** Whether or not this JobCode is to be marked as deleted */
    public var isDeleted: Bool?

    public init(id: Int?, code: String?, projectId: Int?, clientId: Int?, linkedTaskIds: [Int]?, linkedOrgGroupIds: [Int]?, isDeleted: Bool?) {
        self.id = id
        self.code = code
        self.projectId = projectId
        self.clientId = clientId
        self.linkedTaskIds = linkedTaskIds
        self.linkedOrgGroupIds = linkedOrgGroupIds
        self.isDeleted = isDeleted
    }

    public enum CodingKeys: String, CodingKey { 
        case id = "Id"
        case code = "Code"
        case projectId = "ProjectId"
        case clientId = "ClientId"
        case linkedTaskIds = "LinkedTaskIds"
        case linkedOrgGroupIds = "LinkedOrgGroupIds"
        case isDeleted = "IsDeleted"
    }

}