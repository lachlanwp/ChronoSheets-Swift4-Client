//
// CsApiApiResponseProject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CsApiApiResponseProject: Codable {

    public enum CsApiStatus: Int, Codable { 
        case _0 = 0
        case _1 = 1
        case _2 = 2
        case _3 = 3
        case _4 = 4
        case _5 = 5
        case _128 = 128
    }
    public var data: CsApiProject?
    /** 0 &#x3D; Succeeded, 1 &#x3D; FatalException, 2 &#x3D; GeneralError, 3 &#x3D; ValidationError, 4 &#x3D; UnAuthorized, 5 &#x3D; SessionExpired, 128 &#x3D; TestingABC */
    public var status: CsApiStatus?
    public var message: String?


    
    public init(data: CsApiProject?, status: CsApiStatus?, message: String?) {
        self.data = data
        self.status = status
        self.message = message
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(data, forKey: "Data")
        try container.encodeIfPresent(status, forKey: "Status")
        try container.encodeIfPresent(message, forKey: "Message")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        data = try container.decodeIfPresent(CsApiProject.self, forKey: "Data")
        status = try container.decodeIfPresent(CsApiStatus.self, forKey: "Status")
        message = try container.decodeIfPresent(String.self, forKey: "Message")
    }
}

