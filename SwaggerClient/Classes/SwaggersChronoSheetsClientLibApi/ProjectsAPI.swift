//
// ProjectsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ProjectsAPI {
    /**
     Create a project
     
     - parameter request: (body)  
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func projectsCreateProject(request: CSInsertProjectRequest, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseInt32?,_ error: Error?) -> Void)) {
        projectsCreateProjectWithRequestBuilder(request: request, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a project
     - PUT /api/Projects/CreateProject
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
    open class func projectsCreateProjectWithRequestBuilder(request: CSInsertProjectRequest, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseInt32> {
        let path = "/api/Projects/CreateProject"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseInt32>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Get project by Id
     
     - parameter projectId: (query) The ID of the project 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func projectsGetProjectById(projectId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseProject?,_ error: Error?) -> Void)) {
        projectsGetProjectByIdWithRequestBuilder(projectId: projectId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get project by Id
     - GET /api/Projects/GetProjectById
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : {
    "StartDate" : "2000-01-23T04:56:07.000+00:00",
    "ProjectName" : "ProjectName",
    "OrganisationId" : 1,
    "ClientId" : 6,
    "Id" : 0,
    "EndDate" : "2000-01-23T04:56:07.000+00:00",
    "CostEstimation" : 5.962133916683182
  }
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : {
    "StartDate" : "2000-01-23T04:56:07.000+00:00",
    "ProjectName" : "ProjectName",
    "OrganisationId" : 1,
    "ClientId" : 6,
    "Id" : 0,
    "EndDate" : "2000-01-23T04:56:07.000+00:00",
    "CostEstimation" : 5.962133916683182
  }
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter projectId: (query) The ID of the project 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseProject> 
     */
    open class func projectsGetProjectByIdWithRequestBuilder(projectId: Int, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseProject> {
        let path = "/api/Projects/GetProjectById"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "ProjectId": projectId.encodeToJSON()
        ])
        
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseProject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get projects for a particular client
     
     - parameter clientId: (query) The ID of the client 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func projectsGetProjectsForClient(clientId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseListProject?,_ error: Error?) -> Void)) {
        projectsGetProjectsForClientWithRequestBuilder(clientId: clientId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get projects for a particular client
     - GET /api/Projects/GetProjectsForClient
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "StartDate" : "2000-01-23T04:56:07.000+00:00",
    "ProjectName" : "ProjectName",
    "OrganisationId" : 1,
    "ClientId" : 6,
    "Id" : 0,
    "EndDate" : "2000-01-23T04:56:07.000+00:00",
    "CostEstimation" : 5.962133916683182
  }, {
    "StartDate" : "2000-01-23T04:56:07.000+00:00",
    "ProjectName" : "ProjectName",
    "OrganisationId" : 1,
    "ClientId" : 6,
    "Id" : 0,
    "EndDate" : "2000-01-23T04:56:07.000+00:00",
    "CostEstimation" : 5.962133916683182
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "StartDate" : "2000-01-23T04:56:07.000+00:00",
    "ProjectName" : "ProjectName",
    "OrganisationId" : 1,
    "ClientId" : 6,
    "Id" : 0,
    "EndDate" : "2000-01-23T04:56:07.000+00:00",
    "CostEstimation" : 5.962133916683182
  }, {
    "StartDate" : "2000-01-23T04:56:07.000+00:00",
    "ProjectName" : "ProjectName",
    "OrganisationId" : 1,
    "ClientId" : 6,
    "Id" : 0,
    "EndDate" : "2000-01-23T04:56:07.000+00:00",
    "CostEstimation" : 5.962133916683182
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter clientId: (query) The ID of the client 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseListProject> 
     */
    open class func projectsGetProjectsForClientWithRequestBuilder(clientId: Int, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseListProject> {
        let path = "/api/Projects/GetProjectsForClient"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "ClientId": clientId.encodeToJSON()
        ])
        
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseListProject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update a project
     
     - parameter request: (body)  
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func projectsUpdateProject(request: CSUpdateProjectRequest, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseBoolean?,_ error: Error?) -> Void)) {
        projectsUpdateProjectWithRequestBuilder(request: request, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a project
     - POST /api/Projects/UpdateProject
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
     
     - parameter request: (body)  
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseBoolean> 
     */
    open class func projectsUpdateProjectWithRequestBuilder(request: CSUpdateProjectRequest, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseBoolean> {
        let path = "/api/Projects/UpdateProject"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseBoolean>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}
