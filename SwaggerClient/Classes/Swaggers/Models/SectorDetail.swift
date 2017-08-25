//
// SectorDetail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class SectorDetail: JSONEncodable {
    public var id: String?
    public var name: String?
    public var selectSeats: String?
    public var available: Int32?
    public var hasTickets: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["name"] = self.name
        nillableDictionary["selectSeats"] = self.selectSeats
        nillableDictionary["available"] = self.available?.encodeToJSON()
        nillableDictionary["hasTickets"] = self.hasTickets?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
