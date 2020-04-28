//
// CSTaskSeriesReportItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CSTaskSeriesReportItem: Codable {

    public var startDate: Date?
    public var endDate: Date?
    public var taskId: Int?
    public var taskName: String?
    public var spanSeconds: Int?

    public init(startDate: Date?, endDate: Date?, taskId: Int?, taskName: String?, spanSeconds: Int?) {
        self.startDate = startDate
        self.endDate = endDate
        self.taskId = taskId
        self.taskName = taskName
        self.spanSeconds = spanSeconds
    }

    public enum CodingKeys: String, CodingKey { 
        case startDate = "StartDate"
        case endDate = "EndDate"
        case taskId = "TaskId"
        case taskName = "TaskName"
        case spanSeconds = "SpanSeconds"
    }


}

