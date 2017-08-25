//
// EventsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class EventsAPI: APIBase {
    /**

     - parameter clientId: (header) Customer identifier used for authentication. 
     - parameter accessToken: (header) Access token used in the authentication. 
     - parameter eventId: (path) Event to search. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func eventsEventIdGet(clientId clientId: String, accessToken: String, eventId: String, completion: ((data: InlineResponse200?, error: ErrorType?) -> Void)) {
        eventsEventIdGetWithRequestBuilder(clientId: clientId, accessToken: accessToken, eventId: eventId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /events/{eventId}
     - Returns the details for a specific occurring event.
     - examples: [{contentType=application/json, example={
  "eventId" : "3127",
  "opponentClub" : "São Paulo",
  "internetSaleStartDate" : "2017-04-18 00:00:00.000",
  "city" : "Florianopolis",
  "saleEndDate" : "2017-12-31 00:00:00.000",
  "saleStartDate" : "2017-04-18 00:00:00.000",
  "stadiumName" : "Orlando Scarpelli",
  "categorieName" : "Campeonato Brasileiro",
  "principalClub" : "Vasco",
  "opponentClubImage" : "http://sge-cdn.futebolcard.com/images/clubes/img_5.png",
  "principalClubImage" : "http://sge-cdn.futebolcard.com/images/clubes/img_13.png",
  "memberSaleStartDate" : "2017-04-18 00:00:00.000",
  "eventTime" : "00:00:00.0000000",
  "state" : "SC",
  "expressSale" : "1",
  "memberSaleEndDate" : "2017-12-31 00:00:00.000",
  "internetSaleEndDate" : "2017-12-31 00:00:00.000",
  "eventDate" : "2017-12-31 00:00:00.000"
}}]
     
     - parameter clientId: (header) Customer identifier used for authentication. 
     - parameter accessToken: (header) Access token used in the authentication. 
     - parameter eventId: (path) Event to search. 

     - returns: RequestBuilder<InlineResponse200> 
     */
    public class func eventsEventIdGetWithRequestBuilder(clientId clientId: String, accessToken: String, eventId: String) -> RequestBuilder<InlineResponse200> {
        var path = "/events/{eventId}"
        path = path.stringByReplacingOccurrencesOfString("{eventId}", withString: "\(eventId)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "client_id": clientId,
            "access_token": accessToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<InlineResponse200>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter clientId: (header) Customer identifier used for authentication. 
     - parameter accessToken: (header) Access token used in the authentication. 
     - parameter eventId: (path) Event to search. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func eventsEventIdSectorsGet(clientId clientId: String, accessToken: String, eventId: String, completion: ((data: InlineResponse2001?, error: ErrorType?) -> Void)) {
        eventsEventIdSectorsGetWithRequestBuilder(clientId: clientId, accessToken: accessToken, eventId: eventId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /events/{eventId}/sectors
     - Returns a list of sector for the given event.
     - examples: [{contentType=application/json, example={
  "gates" : [ {
    "sectors" : [ {
      "selectSeats" : "1",
      "hasTickets" : 1,
      "name" : "Setor C",
      "available" : 0,
      "id" : "831313"
    } ],
    "gateId" : "831312",
    "gateName" : "Portão 02"
  } ],
  "map" : {
    "coordinates" : [ {
      "sectorId" : "831313",
      "coordinate" : "495,439,213,433,204,452,189,444,175,478,230,491,224,515,271,515,268,537,459,535,452,517,500,515,496,492,521,489,518,458,498,455",
      "shape" : "poly"
    } ],
    "url" : "http://sge-cdn.futebolcard.com/images/mapas/4f3b25e6364ae.png"
  }
}}]
     
     - parameter clientId: (header) Customer identifier used for authentication. 
     - parameter accessToken: (header) Access token used in the authentication. 
     - parameter eventId: (path) Event to search. 

     - returns: RequestBuilder<InlineResponse2001> 
     */
    public class func eventsEventIdSectorsGetWithRequestBuilder(clientId clientId: String, accessToken: String, eventId: String) -> RequestBuilder<InlineResponse2001> {
        var path = "/events/{eventId}/sectors"
        path = path.stringByReplacingOccurrencesOfString("{eventId}", withString: "\(eventId)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "client_id": clientId,
            "access_token": accessToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<InlineResponse2001>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter clientId: (header) Customer identifier used for authentication. 
     - parameter accessToken: (header) Access token used in the authentication. 
     - parameter eventId: (path) Event to search. 
     - parameter sectorId: (path) Sector to search. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func eventsEventIdSectorsSectorIdGet(clientId clientId: String, accessToken: String, eventId: String, sectorId: String, completion: ((data: InlineResponse2002?, error: ErrorType?) -> Void)) {
        eventsEventIdSectorsSectorIdGetWithRequestBuilder(clientId: clientId, accessToken: accessToken, eventId: eventId, sectorId: sectorId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /events/{eventId}/sectors/{sectorId}
     - Returns the details of a specific sector.
     - examples: [{contentType=application/json, example={
  "subsectors" : [ {
    "subsectorId" : "2493408",
    "hasTickets" : 1,
    "name" : "Amarelo"
  } ]
}}]
     
     - parameter clientId: (header) Customer identifier used for authentication. 
     - parameter accessToken: (header) Access token used in the authentication. 
     - parameter eventId: (path) Event to search. 
     - parameter sectorId: (path) Sector to search. 

     - returns: RequestBuilder<InlineResponse2002> 
     */
    public class func eventsEventIdSectorsSectorIdGetWithRequestBuilder(clientId clientId: String, accessToken: String, eventId: String, sectorId: String) -> RequestBuilder<InlineResponse2002> {
        var path = "/events/{eventId}/sectors/{sectorId}"
        path = path.stringByReplacingOccurrencesOfString("{eventId}", withString: "\(eventId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{sectorId}", withString: "\(sectorId)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "client_id": clientId,
            "access_token": accessToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<InlineResponse2002>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter clientId: (header) Customer identifier used for authentication. 
     - parameter accessToken: (header) Access token used in the authentication. 
     - parameter eventId: (path) Event to search. 
     - parameter sectorId: (path) Sector to search. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func eventsEventIdSectorsSectorIdSubsectorsGet(clientId clientId: String, accessToken: String, eventId: String, sectorId: String, completion: ((data: InlineResponse2002?, error: ErrorType?) -> Void)) {
        eventsEventIdSectorsSectorIdSubsectorsGetWithRequestBuilder(clientId: clientId, accessToken: accessToken, eventId: eventId, sectorId: sectorId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /events/{eventId}/sectors/{sectorId}/subsectors
     - Returns a list of subcsectors for a given sector.
     - examples: [{contentType=application/json, example={
  "subsectors" : [ {
    "subsectorId" : "2493408",
    "hasTickets" : 1,
    "name" : "Amarelo"
  } ]
}}]
     
     - parameter clientId: (header) Customer identifier used for authentication. 
     - parameter accessToken: (header) Access token used in the authentication. 
     - parameter eventId: (path) Event to search. 
     - parameter sectorId: (path) Sector to search. 

     - returns: RequestBuilder<InlineResponse2002> 
     */
    public class func eventsEventIdSectorsSectorIdSubsectorsGetWithRequestBuilder(clientId clientId: String, accessToken: String, eventId: String, sectorId: String) -> RequestBuilder<InlineResponse2002> {
        var path = "/events/{eventId}/sectors/{sectorId}/subsectors"
        path = path.stringByReplacingOccurrencesOfString("{eventId}", withString: "\(eventId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{sectorId}", withString: "\(sectorId)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "client_id": clientId,
            "access_token": accessToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<InlineResponse2002>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter clientId: (header) Customer identifier used for authentication. 
     - parameter accessToken: (header) Access token used in the authentication. 
     - parameter eventId: (path) Event to search. 
     - parameter sectorId: (path) Sector to search. 
     - parameter subsectorId: (path) Subsector to search. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func eventsEventIdSectorsSectorIdSubsectorsSubsectorIdGet(clientId clientId: String, accessToken: String, eventId: String, sectorId: String, subsectorId: String, completion: ((data: [InlineResponse2003]?, error: ErrorType?) -> Void)) {
        eventsEventIdSectorsSectorIdSubsectorsSubsectorIdGetWithRequestBuilder(clientId: clientId, accessToken: accessToken, eventId: eventId, sectorId: sectorId, subsectorId: subsectorId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /events/{eventId}/sectors/{sectorId}/subsectors/{subsectorId}
     - Returns a list of seat's information for each row of a given subsector.
     - examples: [{contentType=application/json, example=[ {
  "rowAlias" : "SETORC-R",
  "rowName" : "R",
  "seats" : [ {
    "ticketStatus" : "1",
    "ownerId" : "aeiou",
    "ticketId" : "29334029",
    "seatNumber" : "1"
  } ],
  "rowId" : "831411"
} ]}]
     
     - parameter clientId: (header) Customer identifier used for authentication. 
     - parameter accessToken: (header) Access token used in the authentication. 
     - parameter eventId: (path) Event to search. 
     - parameter sectorId: (path) Sector to search. 
     - parameter subsectorId: (path) Subsector to search. 

     - returns: RequestBuilder<[InlineResponse2003]> 
     */
    public class func eventsEventIdSectorsSectorIdSubsectorsSubsectorIdGetWithRequestBuilder(clientId clientId: String, accessToken: String, eventId: String, sectorId: String, subsectorId: String) -> RequestBuilder<[InlineResponse2003]> {
        var path = "/events/{eventId}/sectors/{sectorId}/subsectors/{subsectorId}"
        path = path.stringByReplacingOccurrencesOfString("{eventId}", withString: "\(eventId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{sectorId}", withString: "\(sectorId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{subsectorId}", withString: "\(subsectorId)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "client_id": clientId,
            "access_token": accessToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<[InlineResponse2003]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter clientId: (header) Customer identifier used for authentication. 
     - parameter accessToken: (header) Access token used in the authentication. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func eventsGet(clientId clientId: String, accessToken: String, completion: ((data: [InlineResponse200]?, error: ErrorType?) -> Void)) {
        eventsGetWithRequestBuilder(clientId: clientId, accessToken: accessToken).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /events
     - Returns a list of existing events.
     - examples: [{contentType=application/json, example=[ {
  "eventId" : "3127",
  "opponentClub" : "São Paulo",
  "internetSaleStartDate" : "2017-04-18 00:00:00.000",
  "city" : "Florianopolis",
  "saleEndDate" : "2017-12-31 00:00:00.000",
  "saleStartDate" : "2017-04-18 00:00:00.000",
  "stadiumName" : "Orlando Scarpelli",
  "categorieName" : "Campeonato Brasileiro",
  "principalClub" : "Vasco",
  "opponentClubImage" : "http://sge-cdn.futebolcard.com/images/clubes/img_5.png",
  "principalClubImage" : "http://sge-cdn.futebolcard.com/images/clubes/img_13.png",
  "memberSaleStartDate" : "2017-04-18 00:00:00.000",
  "eventTime" : "00:00:00.0000000",
  "state" : "SC",
  "expressSale" : "1",
  "memberSaleEndDate" : "2017-12-31 00:00:00.000",
  "internetSaleEndDate" : "2017-12-31 00:00:00.000",
  "eventDate" : "2017-12-31 00:00:00.000"
} ]}]
     
     - parameter clientId: (header) Customer identifier used for authentication. 
     - parameter accessToken: (header) Access token used in the authentication. 

     - returns: RequestBuilder<[InlineResponse200]> 
     */
    public class func eventsGetWithRequestBuilder(clientId clientId: String, accessToken: String) -> RequestBuilder<[InlineResponse200]> {
        let path = "/events"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "client_id": clientId,
            "access_token": accessToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<[InlineResponse200]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

}
