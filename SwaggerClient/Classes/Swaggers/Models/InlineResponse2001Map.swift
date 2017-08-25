//
// InlineResponse2001Map.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class InlineResponse2001Map: JSONEncodable {
    public var url: String?
    public var coordinates: [InlineResponse2001MapCoordinates]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["url"] = self.url
        nillableDictionary["coordinates"] = self.coordinates?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}