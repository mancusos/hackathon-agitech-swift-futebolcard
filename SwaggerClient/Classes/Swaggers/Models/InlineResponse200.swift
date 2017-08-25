//
// InlineResponse200.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class InlineResponse200: JSONEncodable {
    public var eventId: String?
    public var categorieName: String?
    public var internetSaleStartDate: String?
    public var internetSaleEndDate: String?
    public var saleStartDate: String?
    public var saleEndDate: String?
    public var memberSaleStartDate: String?
    public var memberSaleEndDate: String?
    public var eventDate: String?
    public var eventTime: String?
    public var stadiumName: String?
    public var city: String?
    public var state: String?
    public var principalClub: String?
    public var opponentClub: String?
    public var principalClubImage: String?
    public var opponentClubImage: String?
    public var expressSale: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["eventId"] = self.eventId
        nillableDictionary["categorieName"] = self.categorieName
        nillableDictionary["internetSaleStartDate"] = self.internetSaleStartDate
        nillableDictionary["internetSaleEndDate"] = self.internetSaleEndDate
        nillableDictionary["saleStartDate"] = self.saleStartDate
        nillableDictionary["saleEndDate"] = self.saleEndDate
        nillableDictionary["memberSaleStartDate"] = self.memberSaleStartDate
        nillableDictionary["memberSaleEndDate"] = self.memberSaleEndDate
        nillableDictionary["eventDate"] = self.eventDate
        nillableDictionary["eventTime"] = self.eventTime
        nillableDictionary["stadiumName"] = self.stadiumName
        nillableDictionary["city"] = self.city
        nillableDictionary["state"] = self.state
        nillableDictionary["principalClub"] = self.principalClub
        nillableDictionary["opponentClub"] = self.opponentClub
        nillableDictionary["principalClubImage"] = self.principalClubImage
        nillableDictionary["opponentClubImage"] = self.opponentClubImage
        nillableDictionary["expressSale"] = self.expressSale
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
