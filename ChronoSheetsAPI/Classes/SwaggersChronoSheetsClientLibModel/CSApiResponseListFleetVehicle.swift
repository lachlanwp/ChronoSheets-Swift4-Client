//
// CSApiResponseListFleetVehicle.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CSApiResponseListFleetVehicle: Codable {

    public enum CSStatus: String, Codable { 
        case succeeded = "Succeeded"
        case fatalException = "FatalException"
        case generalError = "GeneralError"
        case validationError = "ValidationError"
        case unAuthorized = "UnAuthorized"
        case sessionExpired = "SessionExpired"
    }
    public var data: [CSFleetVehicle]?
    public var status: CSStatus?
    public var message: String?

    public init(data: [CSFleetVehicle]?, status: CSStatus?, message: String?) {
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

