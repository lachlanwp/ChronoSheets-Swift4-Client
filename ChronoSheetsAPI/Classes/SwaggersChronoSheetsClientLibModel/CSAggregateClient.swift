//
// CSAggregateClient.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CSAggregateClient: Codable {

    /** A list of projects that are under this client */
    public var clientProjects: [CSAggregateProject]?
    /** The ID of the client */
    public var id: Int?
    /** The ID of your organisation */
    public var organisationId: Int?
    /** The name of the client */
    public var clientName: String?
    /** The address line 1 of the client */
    public var clientAddressLine1: String?
    /** The address line 2 of the client */
    public var clientAddressLine2: String?
    /** The address suburb of the client */
    public var clientSuburb: String?
    /** The address state of the client */
    public var clientState: String?
    /** The postcode of the client */
    public var clientPostCode: String?
    /** The contact person working under the client */
    public var personOfContact: String?
    /** The phone number of the client */
    public var clientPhoneNumber: String?
    /** The mobile phone number of the client */
    public var clientMobileNumber: String?
    /** The email address of the client */
    public var clientEmailAddress: String?
    /** The website URL of the client */
    public var clientWebURL: String?
    /** The number of projects under the client */
    public var projectCount: Int?


    
    public init(clientProjects: [CSAggregateProject]?, id: Int?, organisationId: Int?, clientName: String?, clientAddressLine1: String?, clientAddressLine2: String?, clientSuburb: String?, clientState: String?, clientPostCode: String?, personOfContact: String?, clientPhoneNumber: String?, clientMobileNumber: String?, clientEmailAddress: String?, clientWebURL: String?, projectCount: Int?) {
        self.clientProjects = clientProjects
        self.id = id
        self.organisationId = organisationId
        self.clientName = clientName
        self.clientAddressLine1 = clientAddressLine1
        self.clientAddressLine2 = clientAddressLine2
        self.clientSuburb = clientSuburb
        self.clientState = clientState
        self.clientPostCode = clientPostCode
        self.personOfContact = personOfContact
        self.clientPhoneNumber = clientPhoneNumber
        self.clientMobileNumber = clientMobileNumber
        self.clientEmailAddress = clientEmailAddress
        self.clientWebURL = clientWebURL
        self.projectCount = projectCount
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(clientProjects, forKey: "ClientProjects")
        try container.encodeIfPresent(id, forKey: "Id")
        try container.encodeIfPresent(organisationId, forKey: "OrganisationId")
        try container.encodeIfPresent(clientName, forKey: "ClientName")
        try container.encodeIfPresent(clientAddressLine1, forKey: "ClientAddressLine1")
        try container.encodeIfPresent(clientAddressLine2, forKey: "ClientAddressLine2")
        try container.encodeIfPresent(clientSuburb, forKey: "ClientSuburb")
        try container.encodeIfPresent(clientState, forKey: "ClientState")
        try container.encodeIfPresent(clientPostCode, forKey: "ClientPostCode")
        try container.encodeIfPresent(personOfContact, forKey: "PersonOfContact")
        try container.encodeIfPresent(clientPhoneNumber, forKey: "ClientPhoneNumber")
        try container.encodeIfPresent(clientMobileNumber, forKey: "ClientMobileNumber")
        try container.encodeIfPresent(clientEmailAddress, forKey: "ClientEmailAddress")
        try container.encodeIfPresent(clientWebURL, forKey: "ClientWebURL")
        try container.encodeIfPresent(projectCount, forKey: "ProjectCount")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        clientProjects = try container.decodeIfPresent([CSAggregateProject].self, forKey: "ClientProjects")
        id = try container.decodeIfPresent(Int.self, forKey: "Id")
        organisationId = try container.decodeIfPresent(Int.self, forKey: "OrganisationId")
        clientName = try container.decodeIfPresent(String.self, forKey: "ClientName")
        clientAddressLine1 = try container.decodeIfPresent(String.self, forKey: "ClientAddressLine1")
        clientAddressLine2 = try container.decodeIfPresent(String.self, forKey: "ClientAddressLine2")
        clientSuburb = try container.decodeIfPresent(String.self, forKey: "ClientSuburb")
        clientState = try container.decodeIfPresent(String.self, forKey: "ClientState")
        clientPostCode = try container.decodeIfPresent(String.self, forKey: "ClientPostCode")
        personOfContact = try container.decodeIfPresent(String.self, forKey: "PersonOfContact")
        clientPhoneNumber = try container.decodeIfPresent(String.self, forKey: "ClientPhoneNumber")
        clientMobileNumber = try container.decodeIfPresent(String.self, forKey: "ClientMobileNumber")
        clientEmailAddress = try container.decodeIfPresent(String.self, forKey: "ClientEmailAddress")
        clientWebURL = try container.decodeIfPresent(String.self, forKey: "ClientWebURL")
        projectCount = try container.decodeIfPresent(Int.self, forKey: "ProjectCount")
    }
}

