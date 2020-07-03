//
// Project.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Project: Codable { 


    public var id: Int?
    public var clientId: Int?
    public var organisationId: Int?
    public var projectName: String?
    public var costEstimation: Double?
    public var costActual: Double?
    public var startDate: Date?
    public var endDate: Date?

    public init(id: Int?, clientId: Int?, organisationId: Int?, projectName: String?, costEstimation: Double?, costActual: Double?, startDate: Date?, endDate: Date?) {
        self.id = id
        self.clientId = clientId
        self.organisationId = organisationId
        self.projectName = projectName
        self.costEstimation = costEstimation
        self.costActual = costActual
        self.startDate = startDate
        self.endDate = endDate
    }

    public enum CodingKeys: String, CodingKey { 
        case id = "Id"
        case clientId = "ClientId"
        case organisationId = "OrganisationId"
        case projectName = "ProjectName"
        case costEstimation = "CostEstimation"
        case costActual = "CostActual"
        case startDate = "StartDate"
        case endDate = "EndDate"
    }

}