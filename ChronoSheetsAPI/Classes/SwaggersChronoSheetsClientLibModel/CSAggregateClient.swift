//
// CSAggregateClient.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CSAggregateClient: Codable {

    /** A list of projects that are under this client */
    public var clientProjects: [CSAggregateProject]?
    /** The ID of the client */
    public var _id: Int?
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

    public init(clientProjects: [CSAggregateProject]?, _id: Int?, organisationId: Int?, clientName: String?, clientAddressLine1: String?, clientAddressLine2: String?, clientSuburb: String?, clientState: String?, clientPostCode: String?, personOfContact: String?, clientPhoneNumber: String?, clientMobileNumber: String?, clientEmailAddress: String?, clientWebURL: String?, projectCount: Int?) {
        self.clientProjects = clientProjects
        self._id = _id
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

    public enum CodingKeys: String, CodingKey { 
        case clientProjects = "ClientProjects"
        case _id = "Id"
        case organisationId = "OrganisationId"
        case clientName = "ClientName"
        case clientAddressLine1 = "ClientAddressLine1"
        case clientAddressLine2 = "ClientAddressLine2"
        case clientSuburb = "ClientSuburb"
        case clientState = "ClientState"
        case clientPostCode = "ClientPostCode"
        case personOfContact = "PersonOfContact"
        case clientPhoneNumber = "ClientPhoneNumber"
        case clientMobileNumber = "ClientMobileNumber"
        case clientEmailAddress = "ClientEmailAddress"
        case clientWebURL = "ClientWebURL"
        case projectCount = "ProjectCount"
    }


}

