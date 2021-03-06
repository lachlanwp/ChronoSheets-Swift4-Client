//
// JobCodesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class JobCodesAPI {
    /**
     Create a job code.    Requires the 'ManageJobsAndTask' permission.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body) An Insert JobCode Request object containing values for the new JobCode to create 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func jobCodesCreateJobCode(xChronosheetsAuth: String, request: InsertJobCodeRequest, completion: @escaping ((_ data: ApiResponseInt32?,_ error: Error?) -> Void)) {
        jobCodesCreateJobCodeWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth, request: request).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Create a job code.    Requires the 'ManageJobsAndTask' permission.
     - POST /JobCodes/CreateJobCode
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body) An Insert JobCode Request object containing values for the new JobCode to create 
     - returns: RequestBuilder<ApiResponseInt32> 
     */
    open class func jobCodesCreateJobCodeWithRequestBuilder(xChronosheetsAuth: String, request: InsertJobCodeRequest) -> RequestBuilder<ApiResponseInt32> {
        let path = "/JobCodes/CreateJobCode"
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
     Delete a job code.    Requires the 'ManageJobsAndTask' permission.
     
     - parameter jobCodeId: (query) The ID of the job code you want to delete 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func jobCodesDeleteJobCode(jobCodeId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: ApiResponseBoolean?,_ error: Error?) -> Void)) {
        jobCodesDeleteJobCodeWithRequestBuilder(jobCodeId: jobCodeId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Delete a job code.    Requires the 'ManageJobsAndTask' permission.
     - DELETE /JobCodes/DeleteJobCode
     - parameter jobCodeId: (query) The ID of the job code you want to delete 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - returns: RequestBuilder<ApiResponseBoolean> 
     */
    open class func jobCodesDeleteJobCodeWithRequestBuilder(jobCodeId: Int, xChronosheetsAuth: String) -> RequestBuilder<ApiResponseBoolean> {
        let path = "/JobCodes/DeleteJobCode"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "JobCodeId": jobCodeId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseBoolean>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get a particular job code by job code id.    Requires 'SubmitTimesheets' or 'ManageJobsAndTasks' permissions.
     
     - parameter jobCodeId: (query) The ID of the JobCode you want to get 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func jobCodesGetJobCodeById(jobCodeId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: ApiResponseJobCode?,_ error: Error?) -> Void)) {
        jobCodesGetJobCodeByIdWithRequestBuilder(jobCodeId: jobCodeId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get a particular job code by job code id.    Requires 'SubmitTimesheets' or 'ManageJobsAndTasks' permissions.
     - GET /JobCodes/GetJobCodeById
     - parameter jobCodeId: (query) The ID of the JobCode you want to get 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - returns: RequestBuilder<ApiResponseJobCode> 
     */
    open class func jobCodesGetJobCodeByIdWithRequestBuilder(jobCodeId: Int, xChronosheetsAuth: String) -> RequestBuilder<ApiResponseJobCode> {
        let path = "/JobCodes/GetJobCodeById"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "JobCodeId": jobCodeId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseJobCode>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get job codes for your organisation.    Requires 'SubmitTimesheets' or 'ManageJobsAndTasks' permissions.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func jobCodesGetJobCodes(xChronosheetsAuth: String, completion: @escaping ((_ data: ApiResponseListJobCode?,_ error: Error?) -> Void)) {
        jobCodesGetJobCodesWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get job codes for your organisation.    Requires 'SubmitTimesheets' or 'ManageJobsAndTasks' permissions.
     - GET /JobCodes/GetJobCodes
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - returns: RequestBuilder<ApiResponseListJobCode> 
     */
    open class func jobCodesGetJobCodesWithRequestBuilder(xChronosheetsAuth: String) -> RequestBuilder<ApiResponseListJobCode> {
        let path = "/JobCodes/GetJobCodes"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponseListJobCode>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update a job code.    Requires the 'ManageJobsAndTask' permission.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body) A Update JobCode Request object containing updated fields.  Make sure to specify the JobCode Id in the request object so that ChronoSheets knows which JobCode to update 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func jobCodesUpdateJobCode(xChronosheetsAuth: String, request: UpdateJobCodeRequest, completion: @escaping ((_ data: ApiResponseBoolean?,_ error: Error?) -> Void)) {
        jobCodesUpdateJobCodeWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth, request: request).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Update a job code.    Requires the 'ManageJobsAndTask' permission.
     - PUT /JobCodes/UpdateJobCode
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter request: (body) A Update JobCode Request object containing updated fields.  Make sure to specify the JobCode Id in the request object so that ChronoSheets knows which JobCode to update 
     - returns: RequestBuilder<ApiResponseBoolean> 
     */
    open class func jobCodesUpdateJobCodeWithRequestBuilder(xChronosheetsAuth: String, request: UpdateJobCodeRequest) -> RequestBuilder<ApiResponseBoolean> {
        let path = "/JobCodes/UpdateJobCode"
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
