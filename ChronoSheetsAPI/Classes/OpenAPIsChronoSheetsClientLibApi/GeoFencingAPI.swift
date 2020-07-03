//
// GeoFencingAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class GeoFencingAPI {
    /**
     Create a geofencing with rules to be used for clock on/off automation.  Requires the 'ManageGeofencing' permission.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func geoFencingCreateGeofence(xChronosheetsAuth: String, request: CreateGeoFenceRequest, completion: @escaping ((_ data: ApiResponseInt32?,_ error: Error?) -> Void)) {
        geoFencingCreateGeofenceWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth, request: request).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Create a geofencing with rules to be used for clock on/off automation.  Requires the 'ManageGeofencing' permission.
     - POST /GeoFencing/CreateGeofence
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body)  
     - returns: RequestBuilder<ApiResponseInt32> 
     */
    open class func geoFencingCreateGeofenceWithRequestBuilder(xChronosheetsAuth: String, request: CreateGeoFenceRequest) -> RequestBuilder<ApiResponseInt32> {
        let path = "/GeoFencing/CreateGeofence"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseInt32>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Deletes a geofence.  Requires the 'ManageGeofencing' permission.
     
     - parameter geofenceId: (query) Specify the geofence you want to delete with the geofence ID. 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func geoFencingDeleteGeofence(geofenceId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: ApiResponseGeofence?,_ error: Error?) -> Void)) {
        geoFencingDeleteGeofenceWithRequestBuilder(geofenceId: geofenceId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Deletes a geofence.  Requires the 'ManageGeofencing' permission.
     - DELETE /GeoFencing/DeleteGeofence
     - parameter geofenceId: (query) Specify the geofence you want to delete with the geofence ID. 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - returns: RequestBuilder<ApiResponseGeofence> 
     */
    open class func geoFencingDeleteGeofenceWithRequestBuilder(geofenceId: Int, xChronosheetsAuth: String) -> RequestBuilder<ApiResponseGeofence> {
        let path = "/GeoFencing/DeleteGeofence"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "GeofenceId": geofenceId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseGeofence>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get a geofence by ID  Requires the 'SubmitTimesheets' permission.
     
     - parameter geofenceId: (query) The ID of the geofence you want to obtain 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func geoFencingGetGeofenceById(geofenceId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: ApiResponseGeofence?,_ error: Error?) -> Void)) {
        geoFencingGetGeofenceByIdWithRequestBuilder(geofenceId: geofenceId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get a geofence by ID  Requires the 'SubmitTimesheets' permission.
     - GET /GeoFencing/GetGeofenceById
     - parameter geofenceId: (query) The ID of the geofence you want to obtain 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - returns: RequestBuilder<ApiResponseGeofence> 
     */
    open class func geoFencingGetGeofenceByIdWithRequestBuilder(geofenceId: Int, xChronosheetsAuth: String) -> RequestBuilder<ApiResponseGeofence> {
        let path = "/GeoFencing/GetGeofenceById"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "GeofenceId": geofenceId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseGeofence>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get geofences belonging to your organisation  Requires the 'SubmitTimesheets' permission.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter skip: (query) Number of records to skip (optional)
     - parameter take: (query) Number of records to take (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func geoFencingGetGeofences(xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil, completion: @escaping ((_ data: ApiResponseForPaginatedListExtendedGeofence?,_ error: Error?) -> Void)) {
        geoFencingGetGeofencesWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth, skip: skip, take: take).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get geofences belonging to your organisation  Requires the 'SubmitTimesheets' permission.
     - GET /GeoFencing/GetGeofences
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter skip: (query) Number of records to skip (optional)
     - parameter take: (query) Number of records to take (optional)
     - returns: RequestBuilder<ApiResponseForPaginatedListExtendedGeofence> 
     */
    open class func geoFencingGetGeofencesWithRequestBuilder(xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil) -> RequestBuilder<ApiResponseForPaginatedListExtendedGeofence> {
        let path = "/GeoFencing/GetGeofences"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Skip": skip?.encodeToJSON(), 
            "Take": take?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseForPaginatedListExtendedGeofence>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Updates a geofencing with rules to be used for clock on/off automation.  Requires the 'ManageGeofencing' permission.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func geoFencingUpdateGeofence(xChronosheetsAuth: String, request: UpdateGeoFenceRequest, completion: @escaping ((_ data: ApiResponseInt32?,_ error: Error?) -> Void)) {
        geoFencingUpdateGeofenceWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth, request: request).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Updates a geofencing with rules to be used for clock on/off automation.  Requires the 'ManageGeofencing' permission.
     - PUT /GeoFencing/UpdateGeofence
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body)  
     - returns: RequestBuilder<ApiResponseInt32> 
     */
    open class func geoFencingUpdateGeofenceWithRequestBuilder(xChronosheetsAuth: String, request: UpdateGeoFenceRequest) -> RequestBuilder<ApiResponseInt32> {
        let path = "/GeoFencing/UpdateGeofence"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseInt32>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}
