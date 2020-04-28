//
// CSOrgReportTimesheetFileAttachment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CSOrgReportTimesheetFileAttachment: Codable {

    public enum CSMobilePlatform: String, Codable { 
        case unknown = "Unknown"
        case ios = "iOS"
        case android = "Android"
    }
    public enum CSAttachmentType: String, Codable { 
        case image = "Image"
        case wordDoc = "WordDoc"
        case pdf = "Pdf"
        case msspreadsheet = "MSSpreadSheet"
        case mspowerpoint = "MSPowerPoint"
        case richTextFormat = "RichTextFormat"
        case zipFile = "ZipFile"
        case other = "Other"
        case audio = "Audio"
    }
    public var username: String?
    public var emailAddress: String?
    public var firstName: String?
    public var lastName: String?
    public var timesheetId: Int?
    public var documentS3SignedUrl: String?
    public var imageLargeS3SignedUrl: String?
    public var imageMediumS3SignedUrl: String?
    public var imageSmallS3SignedUrl: String?
    public var timesheetStart: Date?
    public var timesheetEnd: Date?
    public var fileAttachmentId: Int?
    public var userId: Int?
    public var orgId: Int?
    public var mobilePlatform: CSMobilePlatform?
    public var attachmentType: CSAttachmentType?
    public var notes: String?
    public var nonImageFilePath: String?
    public var imageLargeFilePath: String?
    public var imageMediumFilePath: String?
    public var imageSmallFilePath: String?
    public var originalFileName: String?
    public var latitude: Double?
    public var longitude: Double?
    public var dateUploaded: Date?
    public var dateImageCaptured: Date?
    public var storageAllocationBytes: Int64?
    public var audioDurationSeconds: Int?

    public init(username: String?, emailAddress: String?, firstName: String?, lastName: String?, timesheetId: Int?, documentS3SignedUrl: String?, imageLargeS3SignedUrl: String?, imageMediumS3SignedUrl: String?, imageSmallS3SignedUrl: String?, timesheetStart: Date?, timesheetEnd: Date?, fileAttachmentId: Int?, userId: Int?, orgId: Int?, mobilePlatform: CSMobilePlatform?, attachmentType: CSAttachmentType?, notes: String?, nonImageFilePath: String?, imageLargeFilePath: String?, imageMediumFilePath: String?, imageSmallFilePath: String?, originalFileName: String?, latitude: Double?, longitude: Double?, dateUploaded: Date?, dateImageCaptured: Date?, storageAllocationBytes: Int64?, audioDurationSeconds: Int?) {
        self.username = username
        self.emailAddress = emailAddress
        self.firstName = firstName
        self.lastName = lastName
        self.timesheetId = timesheetId
        self.documentS3SignedUrl = documentS3SignedUrl
        self.imageLargeS3SignedUrl = imageLargeS3SignedUrl
        self.imageMediumS3SignedUrl = imageMediumS3SignedUrl
        self.imageSmallS3SignedUrl = imageSmallS3SignedUrl
        self.timesheetStart = timesheetStart
        self.timesheetEnd = timesheetEnd
        self.fileAttachmentId = fileAttachmentId
        self.userId = userId
        self.orgId = orgId
        self.mobilePlatform = mobilePlatform
        self.attachmentType = attachmentType
        self.notes = notes
        self.nonImageFilePath = nonImageFilePath
        self.imageLargeFilePath = imageLargeFilePath
        self.imageMediumFilePath = imageMediumFilePath
        self.imageSmallFilePath = imageSmallFilePath
        self.originalFileName = originalFileName
        self.latitude = latitude
        self.longitude = longitude
        self.dateUploaded = dateUploaded
        self.dateImageCaptured = dateImageCaptured
        self.storageAllocationBytes = storageAllocationBytes
        self.audioDurationSeconds = audioDurationSeconds
    }

    public enum CodingKeys: String, CodingKey { 
        case username = "Username"
        case emailAddress = "EmailAddress"
        case firstName = "FirstName"
        case lastName = "LastName"
        case timesheetId = "TimesheetId"
        case documentS3SignedUrl = "DocumentS3SignedUrl"
        case imageLargeS3SignedUrl = "ImageLargeS3SignedUrl"
        case imageMediumS3SignedUrl = "ImageMediumS3SignedUrl"
        case imageSmallS3SignedUrl = "ImageSmallS3SignedUrl"
        case timesheetStart = "TimesheetStart"
        case timesheetEnd = "TimesheetEnd"
        case fileAttachmentId = "FileAttachmentId"
        case userId = "UserId"
        case orgId = "OrgId"
        case mobilePlatform = "MobilePlatform"
        case attachmentType = "AttachmentType"
        case notes = "Notes"
        case nonImageFilePath = "NonImageFilePath"
        case imageLargeFilePath = "ImageLargeFilePath"
        case imageMediumFilePath = "ImageMediumFilePath"
        case imageSmallFilePath = "ImageSmallFilePath"
        case originalFileName = "OriginalFileName"
        case latitude = "Latitude"
        case longitude = "Longitude"
        case dateUploaded = "DateUploaded"
        case dateImageCaptured = "DateImageCaptured"
        case storageAllocationBytes = "StorageAllocationBytes"
        case audioDurationSeconds = "AudioDurationSeconds"
    }


}

