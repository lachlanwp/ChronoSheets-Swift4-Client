//
// TranscriptsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class TranscriptsAPI {
    /**
     Get an audio to text transcript for a particular audio file attachment
     
     - parameter fileAttachmentId: (query) The ID of the file attachment that has a transcript.  It should be an audio file attachment. 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func transcriptsGetMyTranscript(fileAttachmentId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseTranscription?,_ error: Error?) -> Void)) {
        transcriptsGetMyTranscriptWithRequestBuilder(fileAttachmentId: fileAttachmentId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get an audio to text transcript for a particular audio file attachment
     - GET /Transcripts/GetMyTranscript
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : {
    "Status" : "Saved",
    "OrgId" : 6,
    "Contents" : "Contents",
    "MediaType" : "Other",
    "Id" : 0,
    "FileAttachmentId" : 1,
    "Created" : "2000-01-23T04:56:07.000+00:00"
  }
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : {
    "Status" : "Saved",
    "OrgId" : 6,
    "Contents" : "Contents",
    "MediaType" : "Other",
    "Id" : 0,
    "FileAttachmentId" : 1,
    "Created" : "2000-01-23T04:56:07.000+00:00"
  }
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter fileAttachmentId: (query) The ID of the file attachment that has a transcript.  It should be an audio file attachment. 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseTranscription> 
     */
    open class func transcriptsGetMyTranscriptWithRequestBuilder(fileAttachmentId: Int, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseTranscription> {
        let path = "/Transcripts/GetMyTranscript"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "FileAttachmentId": fileAttachmentId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseTranscription>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get my file transcripts.  Get audio to text transcripts that you've created.
     
     - parameter startDate: (query) The Start date of the date range.  Transcripts after this date will be obtained. 
     - parameter endDate: (query) The End date of the date range.  Transcripts before this date will be obtained. 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter skip: (query) Skip this many transcripts (optional)
     - parameter take: (query) Take this many transcripts (optional)
     - parameter keyword: (query) Search the text content of the transcript keywords (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func transcriptsGetMyTranscripts(startDate: Date, endDate: Date, xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil, keyword: String? = nil, completion: @escaping ((_ data: CSApiResponseForPaginatedListOrgReportTranscript?,_ error: Error?) -> Void)) {
        transcriptsGetMyTranscriptsWithRequestBuilder(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth, skip: skip, take: take, keyword: keyword).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get my file transcripts.  Get audio to text transcripts that you've created.
     - GET /Transcripts/GetMyTranscripts
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "TotalSetCount" : 0,
  "Message" : "Message",
  "Data" : [ {
    "TimesheetEnd" : "2000-01-23T04:56:07.000+00:00",
    "DateImageCaptured" : "2000-01-23T04:56:07.000+00:00",
    "OriginalFileName" : "OriginalFileName",
    "FinishedJob" : true,
    "DocumentS3SignedUrl" : "DocumentS3SignedUrl",
    "JobName" : "JobName",
    "TimesheetId" : 1,
    "Latitude" : 7.061401241503109,
    "AudioDurationSeconds" : 2,
    "CompletedProcessing" : "2000-01-23T04:56:07.000+00:00",
    "StartedProcessing" : "2000-01-23T04:56:07.000+00:00",
    "Created" : "2000-01-23T04:56:07.000+00:00",
    "MediaType" : "Other",
    "NonImageFilePath" : "NonImageFilePath",
    "TranscriptionStatus" : "Saved",
    "Notes" : "Notes",
    "TimesheetStart" : "2000-01-23T04:56:07.000+00:00",
    "AttachmentType" : "Image",
    "ImageLargeS3SignedUrl" : "ImageLargeS3SignedUrl",
    "FirstName" : "FirstName",
    "ImageSmallS3SignedUrl" : "ImageSmallS3SignedUrl",
    "ImageMediumS3SignedUrl" : "ImageMediumS3SignedUrl",
    "StorageAllocationBytes" : 3,
    "Longitude" : 9.301444243932576,
    "EmailAddress" : "EmailAddress",
    "FileAttachmentId" : 5,
    "ImageMediumFilePath" : "ImageMediumFilePath",
    "TranscriptionId" : 6,
    "OrgId" : 2,
    "ImageSmallFilePath" : "ImageSmallFilePath",
    "MobilePlatform" : "Unknown",
    "Contents" : "Contents",
    "Username" : "Username",
    "ImageLargeFilePath" : "ImageLargeFilePath",
    "UserId" : 5,
    "LastName" : "LastName",
    "DateUploaded" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "TimesheetEnd" : "2000-01-23T04:56:07.000+00:00",
    "DateImageCaptured" : "2000-01-23T04:56:07.000+00:00",
    "OriginalFileName" : "OriginalFileName",
    "FinishedJob" : true,
    "DocumentS3SignedUrl" : "DocumentS3SignedUrl",
    "JobName" : "JobName",
    "TimesheetId" : 1,
    "Latitude" : 7.061401241503109,
    "AudioDurationSeconds" : 2,
    "CompletedProcessing" : "2000-01-23T04:56:07.000+00:00",
    "StartedProcessing" : "2000-01-23T04:56:07.000+00:00",
    "Created" : "2000-01-23T04:56:07.000+00:00",
    "MediaType" : "Other",
    "NonImageFilePath" : "NonImageFilePath",
    "TranscriptionStatus" : "Saved",
    "Notes" : "Notes",
    "TimesheetStart" : "2000-01-23T04:56:07.000+00:00",
    "AttachmentType" : "Image",
    "ImageLargeS3SignedUrl" : "ImageLargeS3SignedUrl",
    "FirstName" : "FirstName",
    "ImageSmallS3SignedUrl" : "ImageSmallS3SignedUrl",
    "ImageMediumS3SignedUrl" : "ImageMediumS3SignedUrl",
    "StorageAllocationBytes" : 3,
    "Longitude" : 9.301444243932576,
    "EmailAddress" : "EmailAddress",
    "FileAttachmentId" : 5,
    "ImageMediumFilePath" : "ImageMediumFilePath",
    "TranscriptionId" : 6,
    "OrgId" : 2,
    "ImageSmallFilePath" : "ImageSmallFilePath",
    "MobilePlatform" : "Unknown",
    "Contents" : "Contents",
    "Username" : "Username",
    "ImageLargeFilePath" : "ImageLargeFilePath",
    "UserId" : 5,
    "LastName" : "LastName",
    "DateUploaded" : "2000-01-23T04:56:07.000+00:00"
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
    "TimesheetEnd" : "2000-01-23T04:56:07.000+00:00",
    "DateImageCaptured" : "2000-01-23T04:56:07.000+00:00",
    "OriginalFileName" : "OriginalFileName",
    "FinishedJob" : true,
    "DocumentS3SignedUrl" : "DocumentS3SignedUrl",
    "JobName" : "JobName",
    "TimesheetId" : 1,
    "Latitude" : 7.061401241503109,
    "AudioDurationSeconds" : 2,
    "CompletedProcessing" : "2000-01-23T04:56:07.000+00:00",
    "StartedProcessing" : "2000-01-23T04:56:07.000+00:00",
    "Created" : "2000-01-23T04:56:07.000+00:00",
    "MediaType" : "Other",
    "NonImageFilePath" : "NonImageFilePath",
    "TranscriptionStatus" : "Saved",
    "Notes" : "Notes",
    "TimesheetStart" : "2000-01-23T04:56:07.000+00:00",
    "AttachmentType" : "Image",
    "ImageLargeS3SignedUrl" : "ImageLargeS3SignedUrl",
    "FirstName" : "FirstName",
    "ImageSmallS3SignedUrl" : "ImageSmallS3SignedUrl",
    "ImageMediumS3SignedUrl" : "ImageMediumS3SignedUrl",
    "StorageAllocationBytes" : 3,
    "Longitude" : 9.301444243932576,
    "EmailAddress" : "EmailAddress",
    "FileAttachmentId" : 5,
    "ImageMediumFilePath" : "ImageMediumFilePath",
    "TranscriptionId" : 6,
    "OrgId" : 2,
    "ImageSmallFilePath" : "ImageSmallFilePath",
    "MobilePlatform" : "Unknown",
    "Contents" : "Contents",
    "Username" : "Username",
    "ImageLargeFilePath" : "ImageLargeFilePath",
    "UserId" : 5,
    "LastName" : "LastName",
    "DateUploaded" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "TimesheetEnd" : "2000-01-23T04:56:07.000+00:00",
    "DateImageCaptured" : "2000-01-23T04:56:07.000+00:00",
    "OriginalFileName" : "OriginalFileName",
    "FinishedJob" : true,
    "DocumentS3SignedUrl" : "DocumentS3SignedUrl",
    "JobName" : "JobName",
    "TimesheetId" : 1,
    "Latitude" : 7.061401241503109,
    "AudioDurationSeconds" : 2,
    "CompletedProcessing" : "2000-01-23T04:56:07.000+00:00",
    "StartedProcessing" : "2000-01-23T04:56:07.000+00:00",
    "Created" : "2000-01-23T04:56:07.000+00:00",
    "MediaType" : "Other",
    "NonImageFilePath" : "NonImageFilePath",
    "TranscriptionStatus" : "Saved",
    "Notes" : "Notes",
    "TimesheetStart" : "2000-01-23T04:56:07.000+00:00",
    "AttachmentType" : "Image",
    "ImageLargeS3SignedUrl" : "ImageLargeS3SignedUrl",
    "FirstName" : "FirstName",
    "ImageSmallS3SignedUrl" : "ImageSmallS3SignedUrl",
    "ImageMediumS3SignedUrl" : "ImageMediumS3SignedUrl",
    "StorageAllocationBytes" : 3,
    "Longitude" : 9.301444243932576,
    "EmailAddress" : "EmailAddress",
    "FileAttachmentId" : 5,
    "ImageMediumFilePath" : "ImageMediumFilePath",
    "TranscriptionId" : 6,
    "OrgId" : 2,
    "ImageSmallFilePath" : "ImageSmallFilePath",
    "MobilePlatform" : "Unknown",
    "Contents" : "Contents",
    "Username" : "Username",
    "ImageLargeFilePath" : "ImageLargeFilePath",
    "UserId" : 5,
    "LastName" : "LastName",
    "DateUploaded" : "2000-01-23T04:56:07.000+00:00"
  } ]
}}, {contentType=application/xml, example=<null>
  <TotalSetCount>123</TotalSetCount>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter startDate: (query) The Start date of the date range.  Transcripts after this date will be obtained. 
     - parameter endDate: (query) The End date of the date range.  Transcripts before this date will be obtained. 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter skip: (query) Skip this many transcripts (optional)
     - parameter take: (query) Take this many transcripts (optional)
     - parameter keyword: (query) Search the text content of the transcript keywords (optional)

     - returns: RequestBuilder<CSApiResponseForPaginatedListOrgReportTranscript> 
     */
    open class func transcriptsGetMyTranscriptsWithRequestBuilder(startDate: Date, endDate: Date, xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil, keyword: String? = nil) -> RequestBuilder<CSApiResponseForPaginatedListOrgReportTranscript> {
        let path = "/Transcripts/GetMyTranscripts"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "StartDate": startDate.encodeToJSON(), 
            "EndDate": endDate.encodeToJSON(), 
            "Skip": skip?.encodeToJSON(), 
            "Take": take?.encodeToJSON(), 
            "Keyword": keyword
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseForPaginatedListOrgReportTranscript>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
