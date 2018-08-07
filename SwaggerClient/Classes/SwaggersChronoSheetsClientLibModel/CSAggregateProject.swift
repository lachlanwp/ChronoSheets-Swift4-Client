//
// CSAggregateProject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CSAggregateProject: Codable {

    public var id: Int?
    public var clientId: Int?
    public var organisationId: Int?
    public var projectName: String?
    public var costEstimation: Double?
    public var startDate: Date?
    public var endDate: Date?


    
    public init(id: Int?, clientId: Int?, organisationId: Int?, projectName: String?, costEstimation: Double?, startDate: Date?, endDate: Date?) {
        self.id = id
        self.clientId = clientId
        self.organisationId = organisationId
        self.projectName = projectName
        self.costEstimation = costEstimation
        self.startDate = startDate
        self.endDate = endDate
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "Id")
        try container.encodeIfPresent(clientId, forKey: "ClientId")
        try container.encodeIfPresent(organisationId, forKey: "OrganisationId")
        try container.encodeIfPresent(projectName, forKey: "ProjectName")
        try container.encodeIfPresent(costEstimation, forKey: "CostEstimation")
        try container.encodeIfPresent(startDate, forKey: "StartDate")
        try container.encodeIfPresent(endDate, forKey: "EndDate")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(Int.self, forKey: "Id")
        clientId = try container.decodeIfPresent(Int.self, forKey: "ClientId")
        organisationId = try container.decodeIfPresent(Int.self, forKey: "OrganisationId")
        projectName = try container.decodeIfPresent(String.self, forKey: "ProjectName")
        costEstimation = try container.decodeIfPresent(Double.self, forKey: "CostEstimation")
        startDate = try container.decodeIfPresent(Date.self, forKey: "StartDate")
        endDate = try container.decodeIfPresent(Date.self, forKey: "EndDate")
    }
}

