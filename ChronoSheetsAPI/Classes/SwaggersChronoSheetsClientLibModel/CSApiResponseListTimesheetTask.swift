//
// CSApiResponseListTimesheetTask.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A standard API response */

public struct CSApiResponseListTimesheetTask: Codable {

    public enum CSStatus: String, Codable { 
        case succeeded = "Succeeded"
        case fatalException = "FatalException"
        case generalError = "GeneralError"
        case validationError = "ValidationError"
        case unAuthorized = "UnAuthorized"
        case sessionExpired = "SessionExpired"
    }
    /** The main Data of the response */
    public var data: [CSTimesheetTask]?
    /** The API response status. Indicates if the request was successful, failed or was unauthorised. */
    public var status: CSStatus?
    /** A message to accompany the response status.  If the Status is failed, this message will hint why it failed and what you need to do. */
    public var message: String?

    public init(data: [CSTimesheetTask]?, status: CSStatus?, message: String?) {
        self.data = data
        self.status = status
        self.message = message
    }

    public enum CodingKeys: String, CodingKey { 
        case data = "Data"
        case status = "Status"
        case message = "Message"
    }


}

