//
// TimesheetTask.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct TimesheetTask: Codable { 


    public var id: Int?
    public var taskName: String?
    public var organisationId: Int?
    public var isDeleted: Bool?
    public var tripEnabled: Bool?

    public init(id: Int?, taskName: String?, organisationId: Int?, isDeleted: Bool?, tripEnabled: Bool?) {
        self.id = id
        self.taskName = taskName
        self.organisationId = organisationId
        self.isDeleted = isDeleted
        self.tripEnabled = tripEnabled
    }

    public enum CodingKeys: String, CodingKey { 
        case id = "Id"
        case taskName = "TaskName"
        case organisationId = "OrganisationId"
        case isDeleted = "IsDeleted"
        case tripEnabled = "TripEnabled"
    }

}
