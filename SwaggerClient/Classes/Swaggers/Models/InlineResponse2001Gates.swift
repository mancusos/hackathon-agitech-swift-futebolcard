//
// InlineResponse2001Gates.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class InlineResponse2001Gates: JSONEncodable {
    public var gateId: String?
    public var gateName: String?
    public var sectors: [InlineResponse2001Sectors]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["gateId"] = self.gateId
        nillableDictionary["gateName"] = self.gateName
        nillableDictionary["sectors"] = self.sectors?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
