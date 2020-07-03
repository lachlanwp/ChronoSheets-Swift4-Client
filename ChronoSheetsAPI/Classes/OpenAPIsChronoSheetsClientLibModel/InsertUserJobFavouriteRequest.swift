//
// InsertUserJobFavouriteRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Used to mark a JobCode as a Favourite.  Favourites can be used in the Mobile app and on the ChronoSheets website */
public struct InsertUserJobFavouriteRequest: Codable { 


    /** The Id of the JobCode that is being marked as a favourite */
    public var jobId: Int?

    public init(jobId: Int?) {
        self.jobId = jobId
    }

    public enum CodingKeys: String, CodingKey { 
        case jobId = "JobId"
    }

}
