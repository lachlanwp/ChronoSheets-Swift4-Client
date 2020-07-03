//
// UsersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class UsersAPI {
    /**
     Create a user account in your organisation.  Requires the 'ManageOrganisationUsers' permission.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body) An Insert User Request object containing values for the new User to create 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersCreateTimesheetUser(xChronosheetsAuth: String, request: InsertUserRequest, completion: @escaping ((_ data: ApiResponseInsertUserResponse?,_ error: Error?) -> Void)) {
        usersCreateTimesheetUserWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth, request: request).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Create a user account in your organisation.  Requires the 'ManageOrganisationUsers' permission.
     - POST /Users/CreateTimesheetUser
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body) An Insert User Request object containing values for the new User to create 
     - returns: RequestBuilder<ApiResponseInsertUserResponse> 
     */
    open class func usersCreateTimesheetUserWithRequestBuilder(xChronosheetsAuth: String, request: InsertUserRequest) -> RequestBuilder<ApiResponseInsertUserResponse> {
        let path = "/Users/CreateTimesheetUser"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseInsertUserResponse>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Get a particular user in your organisation.  Requires the 'ManageOrganisationUsers' or 'ManageOrganisationGroups' permissions.
     
     - parameter userId: (query) The User ID of the UserForManagement you want to get 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersGetTimesheetUser(userId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: ApiResponseUserForManagement?,_ error: Error?) -> Void)) {
        usersGetTimesheetUserWithRequestBuilder(userId: userId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get a particular user in your organisation.  Requires the 'ManageOrganisationUsers' or 'ManageOrganisationGroups' permissions.
     - GET /Users/GetTimesheetUser
     - parameter userId: (query) The User ID of the UserForManagement you want to get 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - returns: RequestBuilder<ApiResponseUserForManagement> 
     */
    open class func usersGetTimesheetUserWithRequestBuilder(userId: Int, xChronosheetsAuth: String) -> RequestBuilder<ApiResponseUserForManagement> {
        let path = "/Users/GetTimesheetUser"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "UserId": userId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseUserForManagement>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get users accounts in your organisation.  Requires the 'ManageOrganisationUsers' or 'ManageOrganisationGroups' permissions.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersGetTimesheetUsers(xChronosheetsAuth: String, completion: @escaping ((_ data: ApiResponseListUserForManagement?,_ error: Error?) -> Void)) {
        usersGetTimesheetUsersWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get users accounts in your organisation.  Requires the 'ManageOrganisationUsers' or 'ManageOrganisationGroups' permissions.
     - GET /Users/GetTimesheetUsers
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - returns: RequestBuilder<ApiResponseListUserForManagement> 
     */
    open class func usersGetTimesheetUsersWithRequestBuilder(xChronosheetsAuth: String) -> RequestBuilder<ApiResponseListUserForManagement> {
        let path = "/Users/GetTimesheetUsers"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseListUserForManagement>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update a user account.  Requires the 'ManageOrganisationUsers' permission.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body) A Update User Request object containing updated fields.  Make sure to specify the User Id in the request object so that ChronoSheets knows which User to update 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersUpdateTimesheetUser(xChronosheetsAuth: String, request: UpdateUserRequest, completion: @escaping ((_ data: ApiResponseUpdateUserResponse?,_ error: Error?) -> Void)) {
        usersUpdateTimesheetUserWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth, request: request).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Update a user account.  Requires the 'ManageOrganisationUsers' permission.
     - PUT /Users/UpdateTimesheetUser
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body) A Update User Request object containing updated fields.  Make sure to specify the User Id in the request object so that ChronoSheets knows which User to update 
     - returns: RequestBuilder<ApiResponseUpdateUserResponse> 
     */
    open class func usersUpdateTimesheetUserWithRequestBuilder(xChronosheetsAuth: String, request: UpdateUserRequest) -> RequestBuilder<ApiResponseUpdateUserResponse> {
        let path = "/Users/UpdateTimesheetUser"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseUpdateUserResponse>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}