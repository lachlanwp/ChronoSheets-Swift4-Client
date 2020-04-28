//
// AggregateClientProjectsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class AggregateClientProjectsAPI {
    /**
     Get client and project information, aggregated.    Requires the 'SubmitTimesheets' or 'ManageClientsAndProjects' permissions.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func aggregateClientProjectsGetAggregateClientProjects(xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseListAggregateClient?,_ error: Error?) -> Void)) {
        aggregateClientProjectsGetAggregateClientProjectsWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get client and project information, aggregated.    Requires the 'SubmitTimesheets' or 'ManageClientsAndProjects' permissions.
     - GET /api/AggregateClientProjects/GetAggregateClientProjects
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "ClientState" : "ClientState",
    "PersonOfContact" : "PersonOfContact",
    "OrganisationId" : 2,
    "ProjectCount" : 7,
    "ClientProjects" : [ {
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
    } ],
    "ClientName" : "ClientName",
    "ClientPostCode" : "ClientPostCode",
    "ClientAddressLine2" : "ClientAddressLine2",
    "ClientAddressLine1" : "ClientAddressLine1",
    "ClientMobileNumber" : "ClientMobileNumber",
    "ClientWebURL" : "ClientWebURL",
    "Id" : 5,
    "ClientPhoneNumber" : "ClientPhoneNumber",
    "ClientEmailAddress" : "ClientEmailAddress",
    "ClientSuburb" : "ClientSuburb"
  }, {
    "ClientState" : "ClientState",
    "PersonOfContact" : "PersonOfContact",
    "OrganisationId" : 2,
    "ProjectCount" : 7,
    "ClientProjects" : [ {
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
    } ],
    "ClientName" : "ClientName",
    "ClientPostCode" : "ClientPostCode",
    "ClientAddressLine2" : "ClientAddressLine2",
    "ClientAddressLine1" : "ClientAddressLine1",
    "ClientMobileNumber" : "ClientMobileNumber",
    "ClientWebURL" : "ClientWebURL",
    "Id" : 5,
    "ClientPhoneNumber" : "ClientPhoneNumber",
    "ClientEmailAddress" : "ClientEmailAddress",
    "ClientSuburb" : "ClientSuburb"
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "ClientState" : "ClientState",
    "PersonOfContact" : "PersonOfContact",
    "OrganisationId" : 2,
    "ProjectCount" : 7,
    "ClientProjects" : [ {
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
    } ],
    "ClientName" : "ClientName",
    "ClientPostCode" : "ClientPostCode",
    "ClientAddressLine2" : "ClientAddressLine2",
    "ClientAddressLine1" : "ClientAddressLine1",
    "ClientMobileNumber" : "ClientMobileNumber",
    "ClientWebURL" : "ClientWebURL",
    "Id" : 5,
    "ClientPhoneNumber" : "ClientPhoneNumber",
    "ClientEmailAddress" : "ClientEmailAddress",
    "ClientSuburb" : "ClientSuburb"
  }, {
    "ClientState" : "ClientState",
    "PersonOfContact" : "PersonOfContact",
    "OrganisationId" : 2,
    "ProjectCount" : 7,
    "ClientProjects" : [ {
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
    } ],
    "ClientName" : "ClientName",
    "ClientPostCode" : "ClientPostCode",
    "ClientAddressLine2" : "ClientAddressLine2",
    "ClientAddressLine1" : "ClientAddressLine1",
    "ClientMobileNumber" : "ClientMobileNumber",
    "ClientWebURL" : "ClientWebURL",
    "Id" : 5,
    "ClientPhoneNumber" : "ClientPhoneNumber",
    "ClientEmailAddress" : "ClientEmailAddress",
    "ClientSuburb" : "ClientSuburb"
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseListAggregateClient> 
     */
    open class func aggregateClientProjectsGetAggregateClientProjectsWithRequestBuilder(xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseListAggregateClient> {
        let path = "/api/AggregateClientProjects/GetAggregateClientProjects"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseListAggregateClient>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
