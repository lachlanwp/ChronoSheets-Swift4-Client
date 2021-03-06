//
// TimesheetAutomationAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class TimesheetAutomationAPI {
    /**
     Creates an automation step.  Timesheet automation is determined by looking at steps taken by the user.  Create a step to log some automation action, such as entering a geofence or tapping on an NFC badge.  Requires the 'SubmitTimesheets' permission.
     
     - parameter request: (body)  
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func timesheetAutomationCreateAutomationStep(request: CSCreateAutomationStepRequest, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseInt32?,_ error: Error?) -> Void)) {
        timesheetAutomationCreateAutomationStepWithRequestBuilder(request: request, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates an automation step.  Timesheet automation is determined by looking at steps taken by the user.  Create a step to log some automation action, such as entering a geofence or tapping on an NFC badge.  Requires the 'SubmitTimesheets' permission.
     - POST /TimesheetAutomation/CreateAutomationStep
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : 0
}}, {contentType=application/xml, example=<null>
  <Data>123</Data>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : 0
}}, {contentType=application/xml, example=<null>
  <Data>123</Data>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter request: (body)  
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseInt32> 
     */
    open class func timesheetAutomationCreateAutomationStepWithRequestBuilder(request: CSCreateAutomationStepRequest, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseInt32> {
        let path = "/TimesheetAutomation/CreateAutomationStep"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseInt32>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum CSSort_timesheetAutomationGetTimesheetAutomationAuditTrail: String { 
        case userName = "UserName"
        case automationActionType = "AutomationActionType"
        case clientDateTime = "ClientDateTime"
        case isProcessed = "IsProcessed"
    }

    /**
     * enum for parameter order
     */
    public enum CSOrder_timesheetAutomationGetTimesheetAutomationAuditTrail: String { 
        case ascending = "Ascending"
        case descending = "Descending"
    }

    /**
     Retrieve the timesheet automation / alerts for geofences activities or NFC tap on/off.  Requires the 'ManageGeofencing' permission.
     
     - parameter geofenceId: (query) The ID of the Geofence 
     - parameter userId: (query)  
     - parameter sort: (query)  
     - parameter order: (query)  
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter skip: (query) Skip this many records (optional)
     - parameter take: (query) Take this many records (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func timesheetAutomationGetTimesheetAutomationAuditTrail(geofenceId: Int, userId: Int, sort: CSSort_timesheetAutomationGetTimesheetAutomationAuditTrail, order: CSOrder_timesheetAutomationGetTimesheetAutomationAuditTrail, xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil, completion: @escaping ((_ data: CSApiResponseForPaginatedListTimesheetAutomationWithOrgAndGeofence?,_ error: Error?) -> Void)) {
        timesheetAutomationGetTimesheetAutomationAuditTrailWithRequestBuilder(geofenceId: geofenceId, userId: userId, sort: sort, order: order, xChronosheetsAuth: xChronosheetsAuth, skip: skip, take: take).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve the timesheet automation / alerts for geofences activities or NFC tap on/off.  Requires the 'ManageGeofencing' permission.
     - GET /TimesheetAutomation/GetTimesheetAutomationAuditTrail
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "TotalSetCount" : 0,
  "Message" : "Message",
  "Data" : [ {
    "IsProcessed" : true,
    "UserName" : "UserName",
    "FirstName" : "FirstName",
    "Coordinates" : [ {
      "Latitude" : 5.637376656633329,
      "Longitude" : 2.3021358869347655
    }, {
      "Latitude" : 5.637376656633329,
      "Longitude" : 2.3021358869347655
    } ],
    "GeofenceName" : "GeofenceName",
    "Latitude" : 5.637376656633329,
    "AutomationId" : 5,
    "Longitude" : 2.3021358869347655,
    "Created" : "2000-01-23T04:56:07.000+00:00",
    "OrgId" : 6,
    "AutomationActionType" : "EnterGeofence",
    "UserId" : 1,
    "ClientDateTime" : "2000-01-23T04:56:07.000+00:00",
    "LastName" : "LastName",
    "Expires" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "IsProcessed" : true,
    "UserName" : "UserName",
    "FirstName" : "FirstName",
    "Coordinates" : [ {
      "Latitude" : 5.637376656633329,
      "Longitude" : 2.3021358869347655
    }, {
      "Latitude" : 5.637376656633329,
      "Longitude" : 2.3021358869347655
    } ],
    "GeofenceName" : "GeofenceName",
    "Latitude" : 5.637376656633329,
    "AutomationId" : 5,
    "Longitude" : 2.3021358869347655,
    "Created" : "2000-01-23T04:56:07.000+00:00",
    "OrgId" : 6,
    "AutomationActionType" : "EnterGeofence",
    "UserId" : 1,
    "ClientDateTime" : "2000-01-23T04:56:07.000+00:00",
    "LastName" : "LastName",
    "Expires" : "2000-01-23T04:56:07.000+00:00"
  } ]
}}, {contentType=application/xml, example=<null>
  <TotalSetCount>123</TotalSetCount>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "TotalSetCount" : 0,
  "Message" : "Message",
  "Data" : [ {
    "IsProcessed" : true,
    "UserName" : "UserName",
    "FirstName" : "FirstName",
    "Coordinates" : [ {
      "Latitude" : 5.637376656633329,
      "Longitude" : 2.3021358869347655
    }, {
      "Latitude" : 5.637376656633329,
      "Longitude" : 2.3021358869347655
    } ],
    "GeofenceName" : "GeofenceName",
    "Latitude" : 5.637376656633329,
    "AutomationId" : 5,
    "Longitude" : 2.3021358869347655,
    "Created" : "2000-01-23T04:56:07.000+00:00",
    "OrgId" : 6,
    "AutomationActionType" : "EnterGeofence",
    "UserId" : 1,
    "ClientDateTime" : "2000-01-23T04:56:07.000+00:00",
    "LastName" : "LastName",
    "Expires" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "IsProcessed" : true,
    "UserName" : "UserName",
    "FirstName" : "FirstName",
    "Coordinates" : [ {
      "Latitude" : 5.637376656633329,
      "Longitude" : 2.3021358869347655
    }, {
      "Latitude" : 5.637376656633329,
      "Longitude" : 2.3021358869347655
    } ],
    "GeofenceName" : "GeofenceName",
    "Latitude" : 5.637376656633329,
    "AutomationId" : 5,
    "Longitude" : 2.3021358869347655,
    "Created" : "2000-01-23T04:56:07.000+00:00",
    "OrgId" : 6,
    "AutomationActionType" : "EnterGeofence",
    "UserId" : 1,
    "ClientDateTime" : "2000-01-23T04:56:07.000+00:00",
    "LastName" : "LastName",
    "Expires" : "2000-01-23T04:56:07.000+00:00"
  } ]
}}, {contentType=application/xml, example=<null>
  <TotalSetCount>123</TotalSetCount>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter geofenceId: (query) The ID of the Geofence 
     - parameter userId: (query)  
     - parameter sort: (query)  
     - parameter order: (query)  
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter skip: (query) Skip this many records (optional)
     - parameter take: (query) Take this many records (optional)

     - returns: RequestBuilder<CSApiResponseForPaginatedListTimesheetAutomationWithOrgAndGeofence> 
     */
    open class func timesheetAutomationGetTimesheetAutomationAuditTrailWithRequestBuilder(geofenceId: Int, userId: Int, sort: CSSort_timesheetAutomationGetTimesheetAutomationAuditTrail, order: CSOrder_timesheetAutomationGetTimesheetAutomationAuditTrail, xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil) -> RequestBuilder<CSApiResponseForPaginatedListTimesheetAutomationWithOrgAndGeofence> {
        let path = "/TimesheetAutomation/GetTimesheetAutomationAuditTrail"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "GeofenceId": geofenceId.encodeToJSON(), 
            "UserId": userId.encodeToJSON(), 
            "Sort": sort.rawValue, 
            "Order": order.rawValue, 
            "Skip": skip?.encodeToJSON(), 
            "Take": take?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseForPaginatedListTimesheetAutomationWithOrgAndGeofence>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
