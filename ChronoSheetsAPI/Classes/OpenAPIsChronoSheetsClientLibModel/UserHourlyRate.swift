//
// UserHourlyRate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UserHourlyRate: Codable { 


    public var rateId: Int?
    public var userId: Int?
    public var organisationId: Int?
    public var isCurrent: Bool?
    public var hourlyRate: Double?
    public var hourlyOvertimeRate: Double?
    public var startDateTime: Date?
    public var endDateTime: Date?

    public init(rateId: Int?, userId: Int?, organisationId: Int?, isCurrent: Bool?, hourlyRate: Double?, hourlyOvertimeRate: Double?, startDateTime: Date?, endDateTime: Date?) {
        self.rateId = rateId
        self.userId = userId
        self.organisationId = organisationId
        self.isCurrent = isCurrent
        self.hourlyRate = hourlyRate
        self.hourlyOvertimeRate = hourlyOvertimeRate
        self.startDateTime = startDateTime
        self.endDateTime = endDateTime
    }

    public enum CodingKeys: String, CodingKey { 
        case rateId = "RateId"
        case userId = "UserId"
        case organisationId = "OrganisationId"
        case isCurrent = "IsCurrent"
        case hourlyRate = "HourlyRate"
        case hourlyOvertimeRate = "HourlyOvertimeRate"
        case startDateTime = "StartDateTime"
        case endDateTime = "EndDateTime"
    }

}