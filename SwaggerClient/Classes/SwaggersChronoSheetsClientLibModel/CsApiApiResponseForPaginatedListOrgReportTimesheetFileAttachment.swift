//
// CsApiApiResponseForPaginatedListOrgReportTimesheetFileAttachment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CsApiApiResponseForPaginatedListOrgReportTimesheetFileAttachment: Codable {

    public enum CsApiStatus: String, Codable { 
        case succeeded = "Succeeded"
        case fatalException = "FatalException"
        case generalError = "GeneralError"
        case validationError = "ValidationError"
        case unAuthorized = "UnAuthorized"
        case sessionExpired = "SessionExpired"
    }
    public var totalSetCount: Int?
    public var data: [CsApiOrgReportTimesheetFileAttachment]?
    public var status: CsApiStatus?
    public var message: String?


    
    public init(totalSetCount: Int?, data: [CsApiOrgReportTimesheetFileAttachment]?, status: CsApiStatus?, message: String?) {
        self.totalSetCount = totalSetCount
        self.data = data
        self.status = status
        self.message = message
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(totalSetCount, forKey: "TotalSetCount")
        try container.encodeIfPresent(data, forKey: "Data")
        try container.encodeIfPresent(status, forKey: "Status")
        try container.encodeIfPresent(message, forKey: "Message")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        totalSetCount = try container.decodeIfPresent(Int.self, forKey: "TotalSetCount")
        data = try container.decodeIfPresent([CsApiOrgReportTimesheetFileAttachment].self, forKey: "Data")
        status = try container.decodeIfPresent(CsApiStatus.self, forKey: "Status")
        message = try container.decodeIfPresent(String.self, forKey: "Message")
    }
}

