//
// CSInsertUserRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Fields for Inserting a new User account (employee) under your Organisation in ChronoSheets */

public struct CSInsertUserRequest: Codable {

    /** The Email Address of the employee */
    public var emailAddress: String?
    /** The First Name of the employee */
    public var firstName: String?
    /** The Last Name of the employee */
    public var lastName: String?
    /** Whether or not the employee is subscribed to ChronoSheets newsletters */
    public var isSubscribedToNewsletter: Bool?
    /** A BIT field designating which Roles/Permissions the employee will have when they sign in.  See the {timesheets.types.Enums.UserRoles} Enum for more details */
    public var roles: Int64?
    /** A BIT field designating which Alerts the employee will receive.  See the {timesheets.types.Enums.AlertSettings} Enum for more details */
    public var alertSettings: Int64?
    /** The UserName of the employee.  This can be used when logging into ChronoSheets */
    public var userName: String?
    /** Set the starting usual Hourly Pay Rate with this value.  This is the Pay Rate the employee receives for working during Rostered Hours */
    public var hourlyPayRate: Double?
    /** Set the starting usual Overtime Hourly Pay Rate with this value.  This is the Pay Rate the employee receives for working outside of Rostered Hours */
    public var hourlyOvertimePayRate: Double?
    /** The Current date time */
    public var currentDate: Date?

    public init(emailAddress: String?, firstName: String?, lastName: String?, isSubscribedToNewsletter: Bool?, roles: Int64?, alertSettings: Int64?, userName: String?, hourlyPayRate: Double?, hourlyOvertimePayRate: Double?, currentDate: Date?) {
        self.emailAddress = emailAddress
        self.firstName = firstName
        self.lastName = lastName
        self.isSubscribedToNewsletter = isSubscribedToNewsletter
        self.roles = roles
        self.alertSettings = alertSettings
        self.userName = userName
        self.hourlyPayRate = hourlyPayRate
        self.hourlyOvertimePayRate = hourlyOvertimePayRate
        self.currentDate = currentDate
    }

    public enum CodingKeys: String, CodingKey { 
        case emailAddress = "EmailAddress"
        case firstName = "FirstName"
        case lastName = "LastName"
        case isSubscribedToNewsletter = "IsSubscribedToNewsletter"
        case roles = "Roles"
        case alertSettings = "AlertSettings"
        case userName = "UserName"
        case hourlyPayRate = "HourlyPayRate"
        case hourlyOvertimePayRate = "HourlyOvertimePayRate"
        case currentDate = "CurrentDate"
    }


}

