//
// CSApiResponseForPaginatedListRawReportItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A paginated API repsonse */

public struct CSApiResponseForPaginatedListRawReportItem: Codable {

    public enum CSStatus: String, Codable { 
        case succeeded = "Succeeded"
        case fatalException = "FatalException"
        case generalError = "GeneralError"
        case validationError = "ValidationError"
        case unAuthorized = "UnAuthorized"
        case sessionExpired = "SessionExpired"
    }
    /** The count of total records that are being paginated */
    public var totalSetCount: Int?
    /** The main Data of the response */
    public var data: [CSRawReportItem]?
    /** The API response status. Indicates if the request was successful, failed or was unauthorised. */
    public var status: CSStatus?
    /** A message to accompany the response status.  If the Status is failed, this message will hint why it failed and what you need to do. */
    public var message: String?

    public init(totalSetCount: Int?, data: [CSRawReportItem]?, status: CSStatus?, message: String?) {
        self.totalSetCount = totalSetCount
        self.data = data
        self.status = status
        self.message = message
    }

    public enum CodingKeys: String, CodingKey { 
        case totalSetCount = "TotalSetCount"
        case data = "Data"
        case status = "Status"
        case message = "Message"
    }


}

