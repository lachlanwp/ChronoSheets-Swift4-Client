//
// CSTimesheet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CSTimesheet: Codable {

    public var timesheetId: Int?
    public var userId: Int?
    public var jobId: Int?
    public var taskId: Int?
    public var startDateTime: Date?
    public var endDateTime: Date?
    public var _description: String?
    public var tripId: Int?
    public var fileAttachmentCount: Int?
    public var payAmount: Double?
    public var overtimePayAmount: Double?
    public var includesOvertime: Bool?

    public init(timesheetId: Int?, userId: Int?, jobId: Int?, taskId: Int?, startDateTime: Date?, endDateTime: Date?, _description: String?, tripId: Int?, fileAttachmentCount: Int?, payAmount: Double?, overtimePayAmount: Double?, includesOvertime: Bool?) {
        self.timesheetId = timesheetId
        self.userId = userId
        self.jobId = jobId
        self.taskId = taskId
        self.startDateTime = startDateTime
        self.endDateTime = endDateTime
        self._description = _description
        self.tripId = tripId
        self.fileAttachmentCount = fileAttachmentCount
        self.payAmount = payAmount
        self.overtimePayAmount = overtimePayAmount
        self.includesOvertime = includesOvertime
    }

    public enum CodingKeys: String, CodingKey { 
        case timesheetId = "TimesheetId"
        case userId = "UserId"
        case jobId = "JobId"
        case taskId = "TaskId"
        case startDateTime = "StartDateTime"
        case endDateTime = "EndDateTime"
        case _description = "Description"
        case tripId = "TripId"
        case fileAttachmentCount = "FileAttachmentCount"
        case payAmount = "PayAmount"
        case overtimePayAmount = "OvertimePayAmount"
        case includesOvertime = "IncludesOvertime"
    }


}

