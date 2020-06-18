//
// CSGeofence.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CSGeofence: Codable {

    public enum CSTriggerSettings: String, Codable { 
        case _none = "None"
        case startTimesheetWhenEntering = "StartTimesheetWhenEntering"
        case stopTimesheetWhenEntering = "StopTimesheetWhenEntering"
        case startOnEnterStopOnLeave = "StartOnEnterStopOnLeave"
    }
    public enum CSAlertSettings: String, Codable { 
        case _none = "None"
        case sendWhenEntering = "SendWhenEntering"
        case sendWhenExiting = "SendWhenExiting"
        case sendWhenEnteringOrExiting = "SendWhenEnteringOrExiting"
    }
    public var geoFencingId: Int?
    public var orgId: Int?
    public var createdByUserId: Int?
    public var lastUpdatedByUserId: Int?
    public var name: String?
    public var locationName: String?
    public var coordinates: [CSBasicCoordinate]?
    public var createdAt: Date?
    public var updatedAt: Date?
    public var triggerJobCodeId: Int?
    public var triggerTaskId: Int?
    public var triggerSettings: CSTriggerSettings?
    public var alertToOrgGroupId: Int?
    public var alertSettings: CSAlertSettings?
    public var startTimeHour: Int?
    public var startTimeMinute: Int?
    public var endTimeHour: Int?
    public var endTimeMinute: Int?

    public init(geoFencingId: Int?, orgId: Int?, createdByUserId: Int?, lastUpdatedByUserId: Int?, name: String?, locationName: String?, coordinates: [CSBasicCoordinate]?, createdAt: Date?, updatedAt: Date?, triggerJobCodeId: Int?, triggerTaskId: Int?, triggerSettings: CSTriggerSettings?, alertToOrgGroupId: Int?, alertSettings: CSAlertSettings?, startTimeHour: Int?, startTimeMinute: Int?, endTimeHour: Int?, endTimeMinute: Int?) {
        self.geoFencingId = geoFencingId
        self.orgId = orgId
        self.createdByUserId = createdByUserId
        self.lastUpdatedByUserId = lastUpdatedByUserId
        self.name = name
        self.locationName = locationName
        self.coordinates = coordinates
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.triggerJobCodeId = triggerJobCodeId
        self.triggerTaskId = triggerTaskId
        self.triggerSettings = triggerSettings
        self.alertToOrgGroupId = alertToOrgGroupId
        self.alertSettings = alertSettings
        self.startTimeHour = startTimeHour
        self.startTimeMinute = startTimeMinute
        self.endTimeHour = endTimeHour
        self.endTimeMinute = endTimeMinute
    }

    public enum CodingKeys: String, CodingKey { 
        case geoFencingId = "GeoFencingId"
        case orgId = "OrgId"
        case createdByUserId = "CreatedByUserId"
        case lastUpdatedByUserId = "LastUpdatedByUserId"
        case name = "Name"
        case locationName = "LocationName"
        case coordinates = "Coordinates"
        case createdAt = "CreatedAt"
        case updatedAt = "UpdatedAt"
        case triggerJobCodeId = "TriggerJobCodeId"
        case triggerTaskId = "TriggerTaskId"
        case triggerSettings = "TriggerSettings"
        case alertToOrgGroupId = "AlertToOrgGroupId"
        case alertSettings = "AlertSettings"
        case startTimeHour = "StartTimeHour"
        case startTimeMinute = "StartTimeMinute"
        case endTimeHour = "EndTimeHour"
        case endTimeMinute = "EndTimeMinute"
    }


}

