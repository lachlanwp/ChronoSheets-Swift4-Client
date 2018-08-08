//
// UsualHoursAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class UsualHoursAPI {
    /**
     Get usual hours (rostered hours) for an employee.  Requires the 'ManageOrganisationUsers' or 'ManageOrganisationUsers' permissions.
     
     - parameter userId: (query) The ID of the User for which you want to get UsualHours for 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usualHoursGetUsualHours(userId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseListUsualHoursDay?,_ error: Error?) -> Void)) {
        usualHoursGetUsualHoursWithRequestBuilder(userId: userId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get usual hours (rostered hours) for an employee.  Requires the 'ManageOrganisationUsers' or 'ManageOrganisationUsers' permissions.
     - GET /api/UsualHours/GetUsualHours
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "DeleteUsualHours" : [ 2, 2 ],
    "DayType" : "Monday",
    "TimeSlots" : [ {
      "StartMinute" : 1,
      "StartHour" : 6,
      "UsualHourId" : 0,
      "DayType" : "Monday",
      "EndHour" : 5,
      "EndMinute" : 5,
      "IsValid" : true
    }, {
      "StartMinute" : 1,
      "StartHour" : 6,
      "UsualHourId" : 0,
      "DayType" : "Monday",
      "EndHour" : 5,
      "EndMinute" : 5,
      "IsValid" : true
    } ]
  }, {
    "DeleteUsualHours" : [ 2, 2 ],
    "DayType" : "Monday",
    "TimeSlots" : [ {
      "StartMinute" : 1,
      "StartHour" : 6,
      "UsualHourId" : 0,
      "DayType" : "Monday",
      "EndHour" : 5,
      "EndMinute" : 5,
      "IsValid" : true
    }, {
      "StartMinute" : 1,
      "StartHour" : 6,
      "UsualHourId" : 0,
      "DayType" : "Monday",
      "EndHour" : 5,
      "EndMinute" : 5,
      "IsValid" : true
    } ]
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "DeleteUsualHours" : [ 2, 2 ],
    "DayType" : "Monday",
    "TimeSlots" : [ {
      "StartMinute" : 1,
      "StartHour" : 6,
      "UsualHourId" : 0,
      "DayType" : "Monday",
      "EndHour" : 5,
      "EndMinute" : 5,
      "IsValid" : true
    }, {
      "StartMinute" : 1,
      "StartHour" : 6,
      "UsualHourId" : 0,
      "DayType" : "Monday",
      "EndHour" : 5,
      "EndMinute" : 5,
      "IsValid" : true
    } ]
  }, {
    "DeleteUsualHours" : [ 2, 2 ],
    "DayType" : "Monday",
    "TimeSlots" : [ {
      "StartMinute" : 1,
      "StartHour" : 6,
      "UsualHourId" : 0,
      "DayType" : "Monday",
      "EndHour" : 5,
      "EndMinute" : 5,
      "IsValid" : true
    }, {
      "StartMinute" : 1,
      "StartHour" : 6,
      "UsualHourId" : 0,
      "DayType" : "Monday",
      "EndHour" : 5,
      "EndMinute" : 5,
      "IsValid" : true
    } ]
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter userId: (query) The ID of the User for which you want to get UsualHours for 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseListUsualHoursDay> 
     */
    open class func usualHoursGetUsualHoursWithRequestBuilder(userId: Int, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseListUsualHoursDay> {
        let path = "/api/UsualHours/GetUsualHours"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "UserId": userId.encodeToJSON()
        ])
        
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseListUsualHoursDay>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Set usual hours (rostered hours) for an employee.  Requires the 'ManageOrganisationUsers' or 'ManageOrganisationUsers' permissions.
     
     - parameter request: (body) A Set UsualHours Request object containing updated data.  Make sure to specify the Day types in the request object so that ChronoSheets knows which Days to update 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usualHoursSetUsualHours(request: CSSetUsualHoursRequest, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseBoolean?,_ error: Error?) -> Void)) {
        usualHoursSetUsualHoursWithRequestBuilder(request: request, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Set usual hours (rostered hours) for an employee.  Requires the 'ManageOrganisationUsers' or 'ManageOrganisationUsers' permissions.
     - PUT /api/UsualHours/SetUsualHours
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : true
}}, {contentType=application/xml, example=<null>
  <Data>true</Data>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : true
}}, {contentType=application/xml, example=<null>
  <Data>true</Data>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter request: (body) A Set UsualHours Request object containing updated data.  Make sure to specify the Day types in the request object so that ChronoSheets knows which Days to update 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseBoolean> 
     */
    open class func usualHoursSetUsualHoursWithRequestBuilder(request: CSSetUsualHoursRequest, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseBoolean> {
        let path = "/api/UsualHours/SetUsualHours"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseBoolean>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}