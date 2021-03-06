//
// TripsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class TripsAPI {
    /**
     Create a new trip.  Important: create a timesheet record before calling this, passing in the new timesheet record id as a reference.    Requires the 'SubmitTimesheets' permission.
     
     - parameter request: (body) A Create Trip Request object containing values for the new Trip to create 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func tripsCreateTrip(request: CSCreateTripRequest, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseInt32?,_ error: Error?) -> Void)) {
        tripsCreateTripWithRequestBuilder(request: request, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a new trip.  Important: create a timesheet record before calling this, passing in the new timesheet record id as a reference.    Requires the 'SubmitTimesheets' permission.
     - POST /Trips/CreateTrip
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
     
     - parameter request: (body) A Create Trip Request object containing values for the new Trip to create 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseInt32> 
     */
    open class func tripsCreateTripWithRequestBuilder(request: CSCreateTripRequest, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseInt32> {
        let path = "/Trips/CreateTrip"
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
     Get trip by Id.    Requires the 'ViewMyTrips' permission.
     
     - parameter tripId: (query) The ID of the Trip you want to get 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func tripsGetMyTripById(tripId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseTrip?,_ error: Error?) -> Void)) {
        tripsGetMyTripByIdWithRequestBuilder(tripId: tripId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get trip by Id.    Requires the 'ViewMyTrips' permission.
     - GET /Trips/GetMyTripById
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : {
    "EndAddress" : "EndAddress",
    "VehicleMake" : "VehicleMake",
    "TripTotalCost" : 7.061401241503109,
    "VehicleId" : 1,
    "VehicleName" : "VehicleName",
    "CacheExpiryDate" : "2000-01-23T04:56:07.000+00:00",
    "TimesheetId" : 6,
    "VehicleYear" : "VehicleYear",
    "EndDate" : "2000-01-23T04:56:07.000+00:00",
    "StartAddress" : "StartAddress",
    "TripId" : 0,
    "StartDate" : "2000-01-23T04:56:07.000+00:00",
    "OrgId" : 5,
    "MobilePlatform" : "Unknown",
    "VehicleModel" : "VehicleModel",
    "UserId" : 5,
    "TotalTripDistanceMeters" : 9.301444243932576,
    "PathCoordinates" : [ {
      "Latitude" : 2.027123023002322,
      "Longitude" : 4.145608029883936
    }, {
      "Latitude" : 2.027123023002322,
      "Longitude" : 4.145608029883936
    } ],
    "CostPerKilometer" : 2.3021358869347655
  }
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : {
    "EndAddress" : "EndAddress",
    "VehicleMake" : "VehicleMake",
    "TripTotalCost" : 7.061401241503109,
    "VehicleId" : 1,
    "VehicleName" : "VehicleName",
    "CacheExpiryDate" : "2000-01-23T04:56:07.000+00:00",
    "TimesheetId" : 6,
    "VehicleYear" : "VehicleYear",
    "EndDate" : "2000-01-23T04:56:07.000+00:00",
    "StartAddress" : "StartAddress",
    "TripId" : 0,
    "StartDate" : "2000-01-23T04:56:07.000+00:00",
    "OrgId" : 5,
    "MobilePlatform" : "Unknown",
    "VehicleModel" : "VehicleModel",
    "UserId" : 5,
    "TotalTripDistanceMeters" : 9.301444243932576,
    "PathCoordinates" : [ {
      "Latitude" : 2.027123023002322,
      "Longitude" : 4.145608029883936
    }, {
      "Latitude" : 2.027123023002322,
      "Longitude" : 4.145608029883936
    } ],
    "CostPerKilometer" : 2.3021358869347655
  }
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter tripId: (query) The ID of the Trip you want to get 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseTrip> 
     */
    open class func tripsGetMyTripByIdWithRequestBuilder(tripId: Int, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseTrip> {
        let path = "/Trips/GetMyTripById"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "TripId": tripId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseTrip>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get my trips.  Get the GPS trips you've recorded and submitted.    Requires the 'ViewMyTrips' permission.
     
     - parameter startDate: (query) The Start date of the date range.  Trips after this date will be obtained. 
     - parameter endDate: (query) The End date of the date range.  Trips before this date will be obtained. 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter skip: (query) Skip this many Trips (optional)
     - parameter take: (query) Take this many Trips (optional)
     - parameter vehicleId: (query) Filter by a particular Vehicle (get trips made with a particular vehicle), specified by VehicleId (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func tripsGetMyTrips(startDate: Date, endDate: Date, xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil, vehicleId: Int? = nil, completion: @escaping ((_ data: CSApiResponseForPaginatedListTrip?,_ error: Error?) -> Void)) {
        tripsGetMyTripsWithRequestBuilder(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth, skip: skip, take: take, vehicleId: vehicleId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get my trips.  Get the GPS trips you've recorded and submitted.    Requires the 'ViewMyTrips' permission.
     - GET /Trips/GetMyTrips
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "TotalSetCount" : 0,
  "Message" : "Message",
  "Data" : [ {
    "EndAddress" : "EndAddress",
    "VehicleMake" : "VehicleMake",
    "TripTotalCost" : 7.061401241503109,
    "VehicleId" : 1,
    "VehicleName" : "VehicleName",
    "CacheExpiryDate" : "2000-01-23T04:56:07.000+00:00",
    "TimesheetId" : 6,
    "VehicleYear" : "VehicleYear",
    "EndDate" : "2000-01-23T04:56:07.000+00:00",
    "StartAddress" : "StartAddress",
    "TripId" : 0,
    "StartDate" : "2000-01-23T04:56:07.000+00:00",
    "OrgId" : 5,
    "MobilePlatform" : "Unknown",
    "VehicleModel" : "VehicleModel",
    "UserId" : 5,
    "TotalTripDistanceMeters" : 9.301444243932576,
    "PathCoordinates" : [ {
      "Latitude" : 2.027123023002322,
      "Longitude" : 4.145608029883936
    }, {
      "Latitude" : 2.027123023002322,
      "Longitude" : 4.145608029883936
    } ],
    "CostPerKilometer" : 2.3021358869347655
  }, {
    "EndAddress" : "EndAddress",
    "VehicleMake" : "VehicleMake",
    "TripTotalCost" : 7.061401241503109,
    "VehicleId" : 1,
    "VehicleName" : "VehicleName",
    "CacheExpiryDate" : "2000-01-23T04:56:07.000+00:00",
    "TimesheetId" : 6,
    "VehicleYear" : "VehicleYear",
    "EndDate" : "2000-01-23T04:56:07.000+00:00",
    "StartAddress" : "StartAddress",
    "TripId" : 0,
    "StartDate" : "2000-01-23T04:56:07.000+00:00",
    "OrgId" : 5,
    "MobilePlatform" : "Unknown",
    "VehicleModel" : "VehicleModel",
    "UserId" : 5,
    "TotalTripDistanceMeters" : 9.301444243932576,
    "PathCoordinates" : [ {
      "Latitude" : 2.027123023002322,
      "Longitude" : 4.145608029883936
    }, {
      "Latitude" : 2.027123023002322,
      "Longitude" : 4.145608029883936
    } ],
    "CostPerKilometer" : 2.3021358869347655
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
    "EndAddress" : "EndAddress",
    "VehicleMake" : "VehicleMake",
    "TripTotalCost" : 7.061401241503109,
    "VehicleId" : 1,
    "VehicleName" : "VehicleName",
    "CacheExpiryDate" : "2000-01-23T04:56:07.000+00:00",
    "TimesheetId" : 6,
    "VehicleYear" : "VehicleYear",
    "EndDate" : "2000-01-23T04:56:07.000+00:00",
    "StartAddress" : "StartAddress",
    "TripId" : 0,
    "StartDate" : "2000-01-23T04:56:07.000+00:00",
    "OrgId" : 5,
    "MobilePlatform" : "Unknown",
    "VehicleModel" : "VehicleModel",
    "UserId" : 5,
    "TotalTripDistanceMeters" : 9.301444243932576,
    "PathCoordinates" : [ {
      "Latitude" : 2.027123023002322,
      "Longitude" : 4.145608029883936
    }, {
      "Latitude" : 2.027123023002322,
      "Longitude" : 4.145608029883936
    } ],
    "CostPerKilometer" : 2.3021358869347655
  }, {
    "EndAddress" : "EndAddress",
    "VehicleMake" : "VehicleMake",
    "TripTotalCost" : 7.061401241503109,
    "VehicleId" : 1,
    "VehicleName" : "VehicleName",
    "CacheExpiryDate" : "2000-01-23T04:56:07.000+00:00",
    "TimesheetId" : 6,
    "VehicleYear" : "VehicleYear",
    "EndDate" : "2000-01-23T04:56:07.000+00:00",
    "StartAddress" : "StartAddress",
    "TripId" : 0,
    "StartDate" : "2000-01-23T04:56:07.000+00:00",
    "OrgId" : 5,
    "MobilePlatform" : "Unknown",
    "VehicleModel" : "VehicleModel",
    "UserId" : 5,
    "TotalTripDistanceMeters" : 9.301444243932576,
    "PathCoordinates" : [ {
      "Latitude" : 2.027123023002322,
      "Longitude" : 4.145608029883936
    }, {
      "Latitude" : 2.027123023002322,
      "Longitude" : 4.145608029883936
    } ],
    "CostPerKilometer" : 2.3021358869347655
  } ]
}}, {contentType=application/xml, example=<null>
  <TotalSetCount>123</TotalSetCount>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter startDate: (query) The Start date of the date range.  Trips after this date will be obtained. 
     - parameter endDate: (query) The End date of the date range.  Trips before this date will be obtained. 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter skip: (query) Skip this many Trips (optional)
     - parameter take: (query) Take this many Trips (optional)
     - parameter vehicleId: (query) Filter by a particular Vehicle (get trips made with a particular vehicle), specified by VehicleId (optional)

     - returns: RequestBuilder<CSApiResponseForPaginatedListTrip> 
     */
    open class func tripsGetMyTripsWithRequestBuilder(startDate: Date, endDate: Date, xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil, vehicleId: Int? = nil) -> RequestBuilder<CSApiResponseForPaginatedListTrip> {
        let path = "/Trips/GetMyTrips"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "StartDate": startDate.encodeToJSON(), 
            "EndDate": endDate.encodeToJSON(), 
            "Skip": skip?.encodeToJSON(), 
            "Take": take?.encodeToJSON(), 
            "VehicleId": vehicleId?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseForPaginatedListTrip>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
