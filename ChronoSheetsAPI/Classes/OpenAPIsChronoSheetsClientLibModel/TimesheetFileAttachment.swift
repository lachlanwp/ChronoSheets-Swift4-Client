//
// TimesheetFileAttachment.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** A file attachment attached to a timesheet */
public struct TimesheetFileAttachment: Codable { 


    public enum MobilePlatform: String, Codable {
        case unknown = "Unknown"
        case ios = "iOS"
        case android = "Android"
    }
    public enum AttachmentType: String, Codable {
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
    /** The ID of the timesheet this attachment is attached to. */
    public var timesheetId: Int?
    /** The limited use signed URL for the document (if it&#39;s not an image).  This URL is unique and will eventually expire.  If the attachment is an image, then this won&#39;t be set. */
    public var documentS3SignedUrl: String?
    /** The limited use signed URL for the large version of the image.  This URL is unique and will eventually expire.  Only set when the attachment is actually an image. */
    public var imageLargeS3SignedUrl: String?
    /** The limited use signed URL for the medium version of the image.  This URL is unique and will eventually expire.  Only set when the attachment is actually an image. */
    public var imageMediumS3SignedUrl: String?
    /** The limited use signed URL for the small version of the image.  This URL is unique and will eventually expire.  Only set when the attachment is actually an image. */
    public var imageSmallS3SignedUrl: String?
    /** The start date and time of the timesheet that this attachment is attached to */
    public var timesheetStart: Date?
    /** The end date and time of the timesheet that this attachment is attached to */
    public var timesheetEnd: Date?
    /** The ID of the file attachment */
    public var fileAttachmentId: Int?
    /** The ID of the user who attached the file */
    public var userId: Int?
    /** The ID of the organisation that owns the file and employs the employee */
    public var orgId: Int?
    /** The mobile platform that was used to attach the file */
    public var mobilePlatform: MobilePlatform?
    /** The type of file attachment */
    public var attachmentType: AttachmentType?
    /** Any notes regarding the file attachment */
    public var notes: String?
    /** The path to the file attachment as hosted by ChronoSheets storage, if it&#39;s not an image.  If the attachment is an image then this won&#39;t be set. */
    public var nonImageFilePath: String?
    /** The path to the file attachment as hosted by ChronoSheets storage, only set if it&#39;s an image.  This is regarding the large version of the image. */
    public var imageLargeFilePath: String?
    /** The path to the file attachment as hosted by ChronoSheets storage, only set if it&#39;s an image.  This is regarding the medium version of the image. */
    public var imageMediumFilePath: String?
    /** The path to the file attachment as hosted by ChronoSheets storage, only set if it&#39;s an image.  This is regarding the small version of the image. */
    public var imageSmallFilePath: String?
    /** The original file name of the attachment */
    public var originalFileName: String?
    /** Meta-data indicating the latitude of the file attachment.  If the attachment is an image, this data originates from the meta data inside the image file. */
    public var latitude: Double?
    /** Meta-data indicating the longitude of the file attachment.  If the attachment is an image, this data originates from the meta data inside the image file. */
    public var longitude: Double?
    /** The date and time the attachment was uploaded.  Time is in UTC. */
    public var dateUploaded: Date?
    /** The original date and time the image was captured, if it was an image.  This data originates from the meta data inside the image file. */
    public var dateImageCaptured: Date?
    /** The number of bytes allocated for storing the file attachment. */
    public var storageAllocationBytes: Int64?
    /** If the attachment was an audio file, this field indicates the duration of the audio file in seconds.  This data originates from the meta data inside the audio file. */
    public var audioDurationSeconds: Int?

    public init(timesheetId: Int?, documentS3SignedUrl: String?, imageLargeS3SignedUrl: String?, imageMediumS3SignedUrl: String?, imageSmallS3SignedUrl: String?, timesheetStart: Date?, timesheetEnd: Date?, fileAttachmentId: Int?, userId: Int?, orgId: Int?, mobilePlatform: MobilePlatform?, attachmentType: AttachmentType?, notes: String?, nonImageFilePath: String?, imageLargeFilePath: String?, imageMediumFilePath: String?, imageSmallFilePath: String?, originalFileName: String?, latitude: Double?, longitude: Double?, dateUploaded: Date?, dateImageCaptured: Date?, storageAllocationBytes: Int64?, audioDurationSeconds: Int?) {
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
