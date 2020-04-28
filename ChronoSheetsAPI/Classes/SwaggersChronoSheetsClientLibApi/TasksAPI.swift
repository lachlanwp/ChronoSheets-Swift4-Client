//
// TasksAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class TasksAPI {
    /**
     Create a task.    Requires the 'ManageJobsAndTask' permission.
     
     - parameter request: (body) An Insert Task Request object containing values for the new Task to create 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func tasksCreateTask(request: CSInsertTaskRequest, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseInt32?,_ error: Error?) -> Void)) {
        tasksCreateTaskWithRequestBuilder(request: request, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a task.    Requires the 'ManageJobsAndTask' permission.
     - POST /api/Tasks/CreateTask
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
     
     - parameter request: (body) An Insert Task Request object containing values for the new Task to create 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseInt32> 
     */
    open class func tasksCreateTaskWithRequestBuilder(request: CSInsertTaskRequest, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseInt32> {
        let path = "/api/Tasks/CreateTask"
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
     Delete a task.    Requires the 'ManageJobsAndTask' permission.
     
     - parameter taskId: (query) The ID of the Task you want to delete 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func tasksDeleteTask(taskId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseBoolean?,_ error: Error?) -> Void)) {
        tasksDeleteTaskWithRequestBuilder(taskId: taskId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a task.    Requires the 'ManageJobsAndTask' permission.
     - DELETE /api/Tasks/DeleteTask
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
     
     - parameter taskId: (query) The ID of the Task you want to delete 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseBoolean> 
     */
    open class func tasksDeleteTaskWithRequestBuilder(taskId: Int, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseBoolean> {
        let path = "/api/Tasks/DeleteTask"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "TaskId": taskId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseBoolean>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get a particular task by Id.   Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.
     
     - parameter taskId: (query) The ID of the TimesheetTask you want to get 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func tasksGetTaskById(taskId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseTimesheetTask?,_ error: Error?) -> Void)) {
        tasksGetTaskByIdWithRequestBuilder(taskId: taskId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a particular task by Id.   Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.
     - GET /api/Tasks/GetTaskById
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : {
    "TripEnabled" : true,
    "IsDeleted" : true,
    "TaskName" : "TaskName",
    "OrganisationId" : 6,
    "Id" : 0
  }
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : {
    "TripEnabled" : true,
    "IsDeleted" : true,
    "TaskName" : "TaskName",
    "OrganisationId" : 6,
    "Id" : 0
  }
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter taskId: (query) The ID of the TimesheetTask you want to get 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseTimesheetTask> 
     */
    open class func tasksGetTaskByIdWithRequestBuilder(taskId: Int, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseTimesheetTask> {
        let path = "/api/Tasks/GetTaskById"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "TaskId": taskId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseTimesheetTask>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get tasks in your organisation.   Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func tasksGetTasks(xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseListTimesheetTask?,_ error: Error?) -> Void)) {
        tasksGetTasksWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get tasks in your organisation.   Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.
     - GET /api/Tasks/GetTasks
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "TripEnabled" : true,
    "IsDeleted" : true,
    "TaskName" : "TaskName",
    "OrganisationId" : 6,
    "Id" : 0
  }, {
    "TripEnabled" : true,
    "IsDeleted" : true,
    "TaskName" : "TaskName",
    "OrganisationId" : 6,
    "Id" : 0
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "TripEnabled" : true,
    "IsDeleted" : true,
    "TaskName" : "TaskName",
    "OrganisationId" : 6,
    "Id" : 0
  }, {
    "TripEnabled" : true,
    "IsDeleted" : true,
    "TaskName" : "TaskName",
    "OrganisationId" : 6,
    "Id" : 0
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseListTimesheetTask> 
     */
    open class func tasksGetTasksWithRequestBuilder(xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseListTimesheetTask> {
        let path = "/api/Tasks/GetTasks"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseListTimesheetTask>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get a collection of tasks for a particular Job, specified by JobId.    Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.
     
     - parameter jobId: (query) The ID of the job 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func tasksGetTasksForJob(jobId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseListTimesheetTask?,_ error: Error?) -> Void)) {
        tasksGetTasksForJobWithRequestBuilder(jobId: jobId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a collection of tasks for a particular Job, specified by JobId.    Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.
     - GET /api/Tasks/GetTasksForJob
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "TripEnabled" : true,
    "IsDeleted" : true,
    "TaskName" : "TaskName",
    "OrganisationId" : 6,
    "Id" : 0
  }, {
    "TripEnabled" : true,
    "IsDeleted" : true,
    "TaskName" : "TaskName",
    "OrganisationId" : 6,
    "Id" : 0
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "TripEnabled" : true,
    "IsDeleted" : true,
    "TaskName" : "TaskName",
    "OrganisationId" : 6,
    "Id" : 0
  }, {
    "TripEnabled" : true,
    "IsDeleted" : true,
    "TaskName" : "TaskName",
    "OrganisationId" : 6,
    "Id" : 0
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter jobId: (query) The ID of the job 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseListTimesheetTask> 
     */
    open class func tasksGetTasksForJobWithRequestBuilder(jobId: Int, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseListTimesheetTask> {
        let path = "/api/Tasks/GetTasksForJob"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "JobId": jobId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseListTimesheetTask>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update a task.    Requires the 'ManageJobsAndTask' permission.
     
     - parameter request: (body) An Update Task Request object containing updated fields.  Make sure to specify the Task Id in the request object so that ChronoSheets knows which Task to update 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func tasksUpdateTask(request: CSUpdateTaskRequest, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseBoolean?,_ error: Error?) -> Void)) {
        tasksUpdateTaskWithRequestBuilder(request: request, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a task.    Requires the 'ManageJobsAndTask' permission.
     - PUT /api/Tasks/UpdateTask
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
     
     - parameter request: (body) An Update Task Request object containing updated fields.  Make sure to specify the Task Id in the request object so that ChronoSheets knows which Task to update 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseBoolean> 
     */
    open class func tasksUpdateTaskWithRequestBuilder(request: CSUpdateTaskRequest, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseBoolean> {
        let path = "/api/Tasks/UpdateTask"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseBoolean>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}
