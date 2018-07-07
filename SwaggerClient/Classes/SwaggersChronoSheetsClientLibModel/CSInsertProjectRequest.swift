//
// CSInsertProjectRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Fields for inserting a new Project */

open class CSInsertProjectRequest: Codable {

    /** The Id of the Client that is associated with the new project */
    public var clientId: Int?
    /** The name of the new Project */
    public var projectName: String?
    /** The estimated cost of work to complete the project.  This value is used in the Organisation Reports view &#39;Project Costs&#39; */
    public var costEstimation: Double?
    /** The start date of the project.  When the project is due to start */
    public var startDate: Date?
    /** The end date of the project.  When the project is due to end */
    public var endDate: Date?


    
    public init(clientId: Int?, projectName: String?, costEstimation: Double?, startDate: Date?, endDate: Date?) {
        self.clientId = clientId
        self.projectName = projectName
        self.costEstimation = costEstimation
        self.startDate = startDate
        self.endDate = endDate
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(clientId, forKey: "ClientId")
        try container.encodeIfPresent(projectName, forKey: "ProjectName")
        try container.encodeIfPresent(costEstimation, forKey: "CostEstimation")
        try container.encodeIfPresent(startDate, forKey: "StartDate")
        try container.encodeIfPresent(endDate, forKey: "EndDate")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        clientId = try container.decodeIfPresent(Int.self, forKey: "ClientId")
        projectName = try container.decodeIfPresent(String.self, forKey: "ProjectName")
        costEstimation = try container.decodeIfPresent(Double.self, forKey: "CostEstimation")
        startDate = try container.decodeIfPresent(Date.self, forKey: "StartDate")
        endDate = try container.decodeIfPresent(Date.self, forKey: "EndDate")
    }
}

