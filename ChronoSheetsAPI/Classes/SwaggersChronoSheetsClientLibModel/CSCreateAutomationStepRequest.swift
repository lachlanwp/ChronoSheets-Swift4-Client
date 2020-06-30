//
// CSCreateAutomationStepRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CSCreateAutomationStepRequest: Codable {

    public enum CSAutomationActionType: String, Codable { 
        case enterGeofence = "EnterGeofence"
        case exitGeofence = "ExitGeofence"
        case tapOnNfc = "TapOnNfc"
    }
    public var geofencingId: Int?
    public var nfcId: Int?
    public var automationActionType: CSAutomationActionType?
    public var latitude: Double?
    public var longitude: Double?
    public var clientTime: Date?

    public init(geofencingId: Int?, nfcId: Int?, automationActionType: CSAutomationActionType?, latitude: Double?, longitude: Double?, clientTime: Date?) {
        self.geofencingId = geofencingId
        self.nfcId = nfcId
        self.automationActionType = automationActionType
        self.latitude = latitude
        self.longitude = longitude
        self.clientTime = clientTime
    }

    public enum CodingKeys: String, CodingKey { 
        case geofencingId = "GeofencingId"
        case nfcId = "NfcId"
        case automationActionType = "AutomationActionType"
        case latitude = "Latitude"
        case longitude = "Longitude"
        case clientTime = "ClientTime"
    }


}

