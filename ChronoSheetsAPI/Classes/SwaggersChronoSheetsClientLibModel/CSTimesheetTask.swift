//
// CSTimesheetTask.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CSTimesheetTask: Codable {

    public var _id: Int?
    public var taskName: String?
    public var organisationId: Int?
    public var isDeleted: Bool?
    public var tripEnabled: Bool?

    public init(_id: Int?, taskName: String?, organisationId: Int?, isDeleted: Bool?, tripEnabled: Bool?) {
        self._id = _id
        self.taskName = taskName
        self.organisationId = organisationId
        self.isDeleted = isDeleted
        self.tripEnabled = tripEnabled
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "Id"
        case taskName = "TaskName"
        case organisationId = "OrganisationId"
        case isDeleted = "IsDeleted"
        case tripEnabled = "TripEnabled"
    }


}

