//
// CSClientSideUser.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CSClientSideUser: Codable {

    public var id: Int?
    public var organisationId: Int?
    public var userName: String?
    public var firstName: String?
    public var lastName: String?
    public var emailAddress: String?
    public var roles: Int64?
    public var alertSettings: Int64?
    public var setupWizardRequired: Bool?
    public var isSubscribedToNewsletter: Bool?
    public var organisation: CSOrganisation?
    public var isPrimaryAccount: Bool?


    
    public init(id: Int?, organisationId: Int?, userName: String?, firstName: String?, lastName: String?, emailAddress: String?, roles: Int64?, alertSettings: Int64?, setupWizardRequired: Bool?, isSubscribedToNewsletter: Bool?, organisation: CSOrganisation?, isPrimaryAccount: Bool?) {
        self.id = id
        self.organisationId = organisationId
        self.userName = userName
        self.firstName = firstName
        self.lastName = lastName
        self.emailAddress = emailAddress
        self.roles = roles
        self.alertSettings = alertSettings
        self.setupWizardRequired = setupWizardRequired
        self.isSubscribedToNewsletter = isSubscribedToNewsletter
        self.organisation = organisation
        self.isPrimaryAccount = isPrimaryAccount
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "Id")
        try container.encodeIfPresent(organisationId, forKey: "OrganisationId")
        try container.encodeIfPresent(userName, forKey: "UserName")
        try container.encodeIfPresent(firstName, forKey: "FirstName")
        try container.encodeIfPresent(lastName, forKey: "LastName")
        try container.encodeIfPresent(emailAddress, forKey: "EmailAddress")
        try container.encodeIfPresent(roles, forKey: "Roles")
        try container.encodeIfPresent(alertSettings, forKey: "AlertSettings")
        try container.encodeIfPresent(setupWizardRequired, forKey: "SetupWizardRequired")
        try container.encodeIfPresent(isSubscribedToNewsletter, forKey: "IsSubscribedToNewsletter")
        try container.encodeIfPresent(organisation, forKey: "Organisation")
        try container.encodeIfPresent(isPrimaryAccount, forKey: "IsPrimaryAccount")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(Int.self, forKey: "Id")
        organisationId = try container.decodeIfPresent(Int.self, forKey: "OrganisationId")
        userName = try container.decodeIfPresent(String.self, forKey: "UserName")
        firstName = try container.decodeIfPresent(String.self, forKey: "FirstName")
        lastName = try container.decodeIfPresent(String.self, forKey: "LastName")
        emailAddress = try container.decodeIfPresent(String.self, forKey: "EmailAddress")
        roles = try container.decodeIfPresent(Int64.self, forKey: "Roles")
        alertSettings = try container.decodeIfPresent(Int64.self, forKey: "AlertSettings")
        setupWizardRequired = try container.decodeIfPresent(Bool.self, forKey: "SetupWizardRequired")
        isSubscribedToNewsletter = try container.decodeIfPresent(Bool.self, forKey: "IsSubscribedToNewsletter")
        organisation = try container.decodeIfPresent(CSOrganisation.self, forKey: "Organisation")
        isPrimaryAccount = try container.decodeIfPresent(Bool.self, forKey: "IsPrimaryAccount")
    }
}

