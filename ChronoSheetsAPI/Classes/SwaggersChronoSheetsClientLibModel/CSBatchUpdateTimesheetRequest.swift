//
// CSBatchUpdateTimesheetRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains a collection of Timesheet objects that are to be either created or updated.  If the ID of the timesheet is specified in the Timesheet object, then that Timesheet will be updated otherwise it will be created */

public struct CSBatchUpdateTimesheetRequest: Codable {

    /** A collection of Timesheet objects to be either created or updated */
    public var timesheets: [CSTimesheet]?

    public init(timesheets: [CSTimesheet]?) {
        self.timesheets = timesheets
    }

    public enum CodingKeys: String, CodingKey { 
        case timesheets = "Timesheets"
    }


}

