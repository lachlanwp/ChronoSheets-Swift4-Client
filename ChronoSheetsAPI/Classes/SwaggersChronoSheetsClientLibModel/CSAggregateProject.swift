//
// CSAggregateProject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CSAggregateProject: Codable {

    /** The ID of the project */
    public var _id: Int?
    /** The ID of the client that this project is assigned to */
    public var clientId: Int?
    /** The ID of your organisation */
    public var organisationId: Int?
    /** The name of the project (can be viewed in PROJECT TIMELINES) */
    public var projectName: String?
    /** The estimated cost of the project (can be viewed in PROJECT TIMELINES) */
    public var costEstimation: Double?
    /** The start date of the project (can be viewed in PROJECT TIMELINES) */
    public var startDate: Date?
    /** The end date of the project (can be viewed in PROJECT TIMELINES) */
    public var endDate: Date?

    public init(_id: Int?, clientId: Int?, organisationId: Int?, projectName: String?, costEstimation: Double?, startDate: Date?, endDate: Date?) {
        self._id = _id
        self.clientId = clientId
        self.organisationId = organisationId
        self.projectName = projectName
        self.costEstimation = costEstimation
        self.startDate = startDate
        self.endDate = endDate
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "Id"
        case clientId = "ClientId"
        case organisationId = "OrganisationId"
        case projectName = "ProjectName"
        case costEstimation = "CostEstimation"
        case startDate = "StartDate"
        case endDate = "EndDate"
    }


}

