//
// UpdateOrganisationRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Field for updating your Organisation */
public struct UpdateOrganisationRequest: Codable { 


    /** The Id of your Organisation.  This is validated based on your current Auth Token */
    public var organsationId: Int?
    /** The updated organisation name */
    public var organisationName: String?
    /** The updated Address Line 1 value */
    public var addressLine01: String?
    /** The updated Address Line 2 value */
    public var addressLine02: String?
    /** The updated address suburb */
    public var organisationSuburb: String?
    /** The updated address state */
    public var organisationState: String?
    /** The updated address postcode */
    public var organisationPostcode: String?
    /** The updated address country */
    public var organisationCountry: String?
    /** The updated contact phone number */
    public var organisationPhone: String?
    /** The update organisation email address */
    public var organisationEmailAddress: String?

    public init(organsationId: Int?, organisationName: String?, addressLine01: String?, addressLine02: String?, organisationSuburb: String?, organisationState: String?, organisationPostcode: String?, organisationCountry: String?, organisationPhone: String?, organisationEmailAddress: String?) {
        self.organsationId = organsationId
        self.organisationName = organisationName
        self.addressLine01 = addressLine01
        self.addressLine02 = addressLine02
        self.organisationSuburb = organisationSuburb
        self.organisationState = organisationState
        self.organisationPostcode = organisationPostcode
        self.organisationCountry = organisationCountry
        self.organisationPhone = organisationPhone
        self.organisationEmailAddress = organisationEmailAddress
    }

    public enum CodingKeys: String, CodingKey { 
        case organsationId = "OrgansationId"
        case organisationName = "OrganisationName"
        case addressLine01 = "AddressLine01"
        case addressLine02 = "AddressLine02"
        case organisationSuburb = "OrganisationSuburb"
        case organisationState = "OrganisationState"
        case organisationPostcode = "OrganisationPostcode"
        case organisationCountry = "OrganisationCountry"
        case organisationPhone = "OrganisationPhone"
        case organisationEmailAddress = "OrganisationEmailAddress"
    }

}