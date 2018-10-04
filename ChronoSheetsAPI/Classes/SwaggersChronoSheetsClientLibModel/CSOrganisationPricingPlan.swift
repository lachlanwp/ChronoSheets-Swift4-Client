//
// CSOrganisationPricingPlan.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CSOrganisationPricingPlan: Codable {

    public var planId: String?
    public var quantity: Int?


    
    public init(planId: String?, quantity: Int?) {
        self.planId = planId
        self.quantity = quantity
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(planId, forKey: "PlanId")
        try container.encodeIfPresent(quantity, forKey: "Quantity")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        planId = try container.decodeIfPresent(String.self, forKey: "PlanId")
        quantity = try container.decodeIfPresent(Int.self, forKey: "Quantity")
    }
}
