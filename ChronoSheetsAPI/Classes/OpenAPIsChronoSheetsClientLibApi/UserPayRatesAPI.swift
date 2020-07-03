//
// UserPayRatesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class UserPayRatesAPI {
    /**
     Create a new pay rate for a particular user, archiving the previous pay rate.    Requires the 'ManageOrganisationUsers' permission.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body) An Insert UserHourlyRate Request object containing values for the new UserHourlyRate to create 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userPayRatesCreatePayRate(xChronosheetsAuth: String, request: InsertUserHourlyRateRequest, completion: @escaping ((_ data: ApiResponseInt32?,_ error: Error?) -> Void)) {
        userPayRatesCreatePayRateWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth, request: request).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Create a new pay rate for a particular user, archiving the previous pay rate.    Requires the 'ManageOrganisationUsers' permission.
     - POST /UserPayRates/CreatePayRate
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body) An Insert UserHourlyRate Request object containing values for the new UserHourlyRate to create 
     - returns: RequestBuilder<ApiResponseInt32> 
     */
    open class func userPayRatesCreatePayRateWithRequestBuilder(xChronosheetsAuth: String, request: InsertUserHourlyRateRequest) -> RequestBuilder<ApiResponseInt32> {
        let path = "/UserPayRates/CreatePayRate"
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
     Get a collection of pay rates for a particular user, specified by user id.    Requires the 'ManageOrganisationUsers' permission.
     
     - parameter userId: (query) The ID of the User for which you want to get UserHourlyRate objects 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userPayRatesGetPayRates(userId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: ApiResponseListUserHourlyRate?,_ error: Error?) -> Void)) {
        userPayRatesGetPayRatesWithRequestBuilder(userId: userId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get a collection of pay rates for a particular user, specified by user id.    Requires the 'ManageOrganisationUsers' permission.
     - GET /UserPayRates/GetPayRates
     - parameter userId: (query) The ID of the User for which you want to get UserHourlyRate objects 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - returns: RequestBuilder<ApiResponseListUserHourlyRate> 
     */
    open class func userPayRatesGetPayRatesWithRequestBuilder(userId: Int, xChronosheetsAuth: String) -> RequestBuilder<ApiResponseListUserHourlyRate> {
        let path = "/UserPayRates/GetPayRates"
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

        let requestBuilder: RequestBuilder<ApiResponseListUserHourlyRate>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
