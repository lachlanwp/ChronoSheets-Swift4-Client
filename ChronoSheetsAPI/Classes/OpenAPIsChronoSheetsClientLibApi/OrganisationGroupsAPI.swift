//
// OrganisationGroupsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class OrganisationGroupsAPI {
    /**
     Create an organisation group.    Requires the 'ManageOrganisationGroups' permissions.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body) An Insert OrganisationGroup Request object containing values for the new OrganisationGroup to create 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupsCreateOrganisationGroup(xChronosheetsAuth: String, request: InsertOrganisationGroupRequest, completion: @escaping ((_ data: ApiResponseInt32?,_ error: Error?) -> Void)) {
        organisationGroupsCreateOrganisationGroupWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth, request: request).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Create an organisation group.    Requires the 'ManageOrganisationGroups' permissions.
     - POST /OrganisationGroups/CreateOrganisationGroup
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body) An Insert OrganisationGroup Request object containing values for the new OrganisationGroup to create 
     - returns: RequestBuilder<ApiResponseInt32> 
     */
    open class func organisationGroupsCreateOrganisationGroupWithRequestBuilder(xChronosheetsAuth: String, request: InsertOrganisationGroupRequest) -> RequestBuilder<ApiResponseInt32> {
        let path = "/OrganisationGroups/CreateOrganisationGroup"
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

     - parameter organisationGroupId: (query)  
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupsDeleteOrganisationGroup(organisationGroupId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: ApiResponseBoolean?,_ error: Error?) -> Void)) {
        organisationGroupsDeleteOrganisationGroupWithRequestBuilder(organisationGroupId: organisationGroupId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     - DELETE /OrganisationGroups/DeleteOrganisationGroup
     - parameter organisationGroupId: (query)  
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - returns: RequestBuilder<ApiResponseBoolean> 
     */
    open class func organisationGroupsDeleteOrganisationGroupWithRequestBuilder(organisationGroupId: Int, xChronosheetsAuth: String) -> RequestBuilder<ApiResponseBoolean> {
        let path = "/OrganisationGroups/DeleteOrganisationGroup"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "OrganisationGroupId": organisationGroupId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseBoolean>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get a particular organisation group.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
     
     - parameter organisationGroupId: (query) The ID of the OrganisationGroup you want to get 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupsGetOrganisationGroup(organisationGroupId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: ApiResponseOrganisationGroup?,_ error: Error?) -> Void)) {
        organisationGroupsGetOrganisationGroupWithRequestBuilder(organisationGroupId: organisationGroupId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get a particular organisation group.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
     - GET /OrganisationGroups/GetOrganisationGroup
     - parameter organisationGroupId: (query) The ID of the OrganisationGroup you want to get 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - returns: RequestBuilder<ApiResponseOrganisationGroup> 
     */
    open class func organisationGroupsGetOrganisationGroupWithRequestBuilder(organisationGroupId: Int, xChronosheetsAuth: String) -> RequestBuilder<ApiResponseOrganisationGroup> {
        let path = "/OrganisationGroups/GetOrganisationGroup"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "OrganisationGroupId": organisationGroupId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseOrganisationGroup>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get a collection of organisation groups that are under your organisation.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupsGetOrganisationGroups(xChronosheetsAuth: String, completion: @escaping ((_ data: ApiResponseListOrganisationGroup?,_ error: Error?) -> Void)) {
        organisationGroupsGetOrganisationGroupsWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get a collection of organisation groups that are under your organisation.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
     - GET /OrganisationGroups/GetOrganisationGroups
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - returns: RequestBuilder<ApiResponseListOrganisationGroup> 
     */
    open class func organisationGroupsGetOrganisationGroupsWithRequestBuilder(xChronosheetsAuth: String) -> RequestBuilder<ApiResponseListOrganisationGroup> {
        let path = "/OrganisationGroups/GetOrganisationGroups"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseListOrganisationGroup>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get org groups for a particular job.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
     
     - parameter jobId: (query) The ID of the job 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupsGetOrganisationGroupsForJob(jobId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: ApiResponseListOrganisationGroup?,_ error: Error?) -> Void)) {
        organisationGroupsGetOrganisationGroupsForJobWithRequestBuilder(jobId: jobId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get org groups for a particular job.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
     - GET /OrganisationGroups/GetOrganisationGroupsForJob
     - parameter jobId: (query) The ID of the job 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - returns: RequestBuilder<ApiResponseListOrganisationGroup> 
     */
    open class func organisationGroupsGetOrganisationGroupsForJobWithRequestBuilder(jobId: Int, xChronosheetsAuth: String) -> RequestBuilder<ApiResponseListOrganisationGroup> {
        let path = "/OrganisationGroups/GetOrganisationGroupsForJob"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "JobId": jobId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseListOrganisationGroup>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get org groups for a particular vehicle.    Requires the 'ManageOrganisationGroups', 'ManageFleet' or 'ManageOrganisationUsers' permissions.
     
     - parameter vehicleId: (query) The ID of the vehicle 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupsGetOrganisationGroupsForVehicle(vehicleId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: ApiResponseListOrganisationGroup?,_ error: Error?) -> Void)) {
        organisationGroupsGetOrganisationGroupsForVehicleWithRequestBuilder(vehicleId: vehicleId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get org groups for a particular vehicle.    Requires the 'ManageOrganisationGroups', 'ManageFleet' or 'ManageOrganisationUsers' permissions.
     - GET /OrganisationGroups/GetOrganisationGroupsForVehicle
     - parameter vehicleId: (query) The ID of the vehicle 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - returns: RequestBuilder<ApiResponseListOrganisationGroup> 
     */
    open class func organisationGroupsGetOrganisationGroupsForVehicleWithRequestBuilder(vehicleId: Int, xChronosheetsAuth: String) -> RequestBuilder<ApiResponseListOrganisationGroup> {
        let path = "/OrganisationGroups/GetOrganisationGroupsForVehicle"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "VehicleId": vehicleId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseListOrganisationGroup>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update an organisation group.    Requires the 'ManageOrganisationGroups' permissions.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body) A Save OrganisationGroup Request object containing updated fields.  Make sure to specify the OrganisationGroup Id in the request object so that ChronoSheets knows which OrganisationGroup to update 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupsUpdateOrganisationGroup(xChronosheetsAuth: String, request: SaveOrganisationGroupRequest, completion: @escaping ((_ data: ApiResponseBoolean?,_ error: Error?) -> Void)) {
        organisationGroupsUpdateOrganisationGroupWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth, request: request).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Update an organisation group.    Requires the 'ManageOrganisationGroups' permissions.
     - PUT /OrganisationGroups/UpdateOrganisationGroup
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body) A Save OrganisationGroup Request object containing updated fields.  Make sure to specify the OrganisationGroup Id in the request object so that ChronoSheets knows which OrganisationGroup to update 
     - returns: RequestBuilder<ApiResponseBoolean> 
     */
    open class func organisationGroupsUpdateOrganisationGroupWithRequestBuilder(xChronosheetsAuth: String, request: SaveOrganisationGroupRequest) -> RequestBuilder<ApiResponseBoolean> {
        let path = "/OrganisationGroups/UpdateOrganisationGroup"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseBoolean>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}
