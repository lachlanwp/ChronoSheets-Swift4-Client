//
// CSInsertTaskRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CSInsertTaskRequest: Codable {

    public var taskName: String?
    public var tripEnabled: Bool?


    
    public init(taskName: String?, tripEnabled: Bool?) {
        self.taskName = taskName
        self.tripEnabled = tripEnabled
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(taskName, forKey: "TaskName")
        try container.encodeIfPresent(tripEnabled, forKey: "TripEnabled")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        taskName = try container.decodeIfPresent(String.self, forKey: "TaskName")
        tripEnabled = try container.decodeIfPresent(Bool.self, forKey: "TripEnabled")
    }
}
