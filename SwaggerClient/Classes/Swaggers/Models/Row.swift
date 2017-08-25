//
// Row.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Row: JSONEncodable {
    public var rowId: String?
    public var rowAlias: String?
    public var rowName: String?
    public var seats: [EventseventIdsectorssectorIdsubsectorssubsectorIdSeats]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["rowId"] = self.rowId
        nillableDictionary["rowAlias"] = self.rowAlias
        nillableDictionary["rowName"] = self.rowName
        nillableDictionary["seats"] = self.seats?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}