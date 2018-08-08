//
// CSDoLoginRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An API Request object for logging into ChronoSheets */

open class CSDoLoginRequest: Codable {

    /** Your ChronoSheets username or registered email address */
    public var usernameOrEmail: String?
    /** Your ChronoSheets password */
    public var password: String?


    
    public init(usernameOrEmail: String?, password: String?) {
        self.usernameOrEmail = usernameOrEmail
        self.password = password
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(usernameOrEmail, forKey: "UsernameOrEmail")
        try container.encodeIfPresent(password, forKey: "Password")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        usernameOrEmail = try container.decodeIfPresent(String.self, forKey: "UsernameOrEmail")
        password = try container.decodeIfPresent(String.self, forKey: "Password")
    }
}
