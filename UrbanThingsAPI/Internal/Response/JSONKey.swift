//
//  JSONKeys.swift
//  UrbanThingsAPI
//
//  Created by Mark Woollard on 26/04/2016.
//  Copyright © 2016 Fat Attitude. All rights reserved.
//

import Foundation

enum JSONKey : String {
    
    case Success = "success"
    case Data = "data"
    case LocalizedErrorMessage = "localizedErrorMessage"
    case Name = "name"
    case PrimaryCode = "primaryCode"
    case ImportSourceID = "importSourceID"
    case ImportSource = "importSource"
    case Comment = "comment"
    case LocalityName = "localityName"
    case Country = "country"
    case SourceInfoURL = "sourceInfoURL"
    case SourceDataURL = "sourceDataURL"
    case SourceName = "sourceName"
    case SourceIconURL = "sourceIconURL"
    case AttributionLabel = "attributionLabel"
    case AttributionNotes = "attributionNotes"
    case AttributionImageURL = "attributionImageURL"
    case Latitude = "lat"
    case Longitude = "lng"
    case StopMode = "stopMode"
    case AdditionalCode = "additionalCode"
    case SmsCode = "smsCode"
    case Bearing = "bearing"
    case DirectionName = "directionName"
    case StopIndicator = "stopIndicator"
    case IsClosed = "isClosed"
    case PlacePoints = "placePoints"
    case HasResourceStatus = "hasResourceStatus"
    case PlacePointType = "placePointType"
    case SubclassType = "subClassType"
    case AgencyID = "agencyID"
    case AgencyName = "agencyName"
    case AgencyURL = "agencyURL"
    case AgencyTimeZone = "agencyTimeZone"
    case AgencyLanguage = "agencyLanguage"
    case AgencyPhone = "agencyPhone"
    case AgencyFareURL = "agencyFareURL"
    case AgencyRegion = "agencyRegion"
    case AgencyImportSource = "agencyImportSource"
    case ID = "id"
    case StartDate = "startDate"
    case EndDate = "endDate"
    case AdditionalRunningDates = "additionalRunningDates"
    case ExcludedRunningDates = "excludedRunningDates"
    case RunsSunday = "runsSunday"
    case RunsMonday = "runsMonday"
    case RunsTuesday = "runsTuesday"
    case RunsWednesday = "runsWednesday"
    case RunsThursday = "runsThursday"
    case RunsFriday = "runsFriday"
    case RunsSaturday = "runsSaturday"
    case TripInfo = "tripInfo"
    case RouteInfo = "routeInfo"
    case ScheduledCall = "scheduledCall"
    case RouteDescription = "routeDescription"
    case AgencyCode = "agencyCode"
    case RouteID = "routeID"
    case LineName = "lineName"
    case LineColor = "lineColor"
    case LineTextColor = "lineTextColor"
    case OperatorName = "operatorName"
    case OperatorID = "operatorID"
    case OperatorRegion = "operatorRegion"
    case RouteType = "routeType"
    case CenterPointLat = "centerPointLat"
    case CenterPointLng = "centerPointLng"
    case TripID = "tripID"
    case OriginName = "originName"
    case OriginPrimaryCode = "originPrimaryCode"
    case Headsign = "headsign"
    case VehicleID = "vehicleID"
    case DirectionID = "directionID"
    case IsWheelcharAccessible = "isWheelchairAccessible"
    case Calendar = "calendar"
    case Trips = "trips"
    case Polyline = "polyline"
    case Info = "info"
    case StopCalls = "stopCalls"
    case StopID = "stopID"
    case TransitStopPrimaryCode = "transitStopPrimaryCode"
    case TransitStopName = "transitStopName"
    case TransitStopLocalityName = "transitStopLocalityName"
    case TransitStopLatitude = "transitStopLatitude"
    case TransitStopLongitude = "transitStopLongitude"
    case QueryStartTime = "queryStartTime"
    case QueryEndTime = "queryEndTime"
    case ScheduledCalls = "scheduledCalls"
    case ScheduledArrivalTime = "scheduledArrivalTime"
    case ScheduledDepartureTime = "scheduledDepartureTime"
    case PickUpType = "pickUpType"
    case DropOffType = "dropOffType"
    case RTIReports = "rtiReports"
    case NoDataLabel = "noDataLabel"
    case ReportName = "reportName"
    case PlatformID = "platformID"
    case Timestamp = "timeStamp"
    case ExpectedArrivalTime = "expectedArrivalTime"
    case ExpectedDepartureTime = "expectedDepartureTime"
    case Platform = "platform"
    case IsCancelled = "isCancelled"
    case MasterDisplayFormat = "masterDisplayFormat"
    case DistanceMetres = "distanceMetres"
    case VehicleRTI = "vehicleRTI"
    case VehicleRegistrationCode = "vehicleRegistrationCode"
    case DelayOffsetMinutes = "delayOffsetMinutes"
    case VehicleCapacityTotalPassengers = "vehicleCapacityTotalPassengers"
    case VehicleOccupancyPassengers = "vehicleOccupancyPassengers"
    case UpcomingCalls = "upcomingCalls"
    case LocalizedSummary = "localizedSummary"
    case LocalizedDescription = "localizedDescription"
    case LocalizedAdditionalInfo = "localizedAdditionalInfo"
    case Severity = "severity"
    case StopBoards = "stopBoards"
    case Disruptions = "disruptions"
    case EnableAutoRefresh = "enableAutoRefresh"
    case HeaderLabel = "headerLabel"
    case HideSecondary = "hideSecondary"
    case HidePlatform = "hidePlatform"
    case EnableGroupFiltering = "enableGroupFiltering"
    case IDHeader = "idHeader"
    case MainHeader = "mainHeader"
    case SecondaryHeader = "secondaryHeader"
    case PlatformHeader = "platformHeader"
    case TimeHeader = "timeHeader"
    case Color = "color"
    case ColorCompliment = "colorCompliment"
    case Rows = "rows"
    case Groups = "groups"
    case Messages = "messages"
    case NoteText = "noteText"
    case IsRTI = "isrti"
    case GroupID = "groupID"
    case VehicleMode = "vehicleMode"
    case VehicleRegistrationText = "vehicleRegistrationText"
    case TrackingID = "trackingID"
    case IDLabel = "idLabel"
    case MainLabel = "mainLabel"
    case SecondaryLabel = "secondaryLabel"
    case PlatformLabel = "platformLabel"
    case TimeMajorLabel = "timeMajorLabel"
    case TimeMinorLabel = "timeMinorLabel"
    case Label = "label"
    case HeaderText = "headerText"
    case MainText = "mainText"
    case LinkText = "linkText"
    case IconURL = "iconURL"
    case LinkURL = "linkURL"
    case AvailablePlaces = "availablePlaces"
    case TakenPlaces = "takenPlaces"
    case CustomStatusCode = "customStatusCode"
    case Trend = "trend"
    case StatusText = "statusText"
    case VehicleType = "vehicleType"
    case ResponseID = "responseID"
    case Status = "status"
    case Journeys = "journeys"
    case AttributionsHTML = "attributionsHTML"
    case WarningsHTML = "warningsHTML"
    case StatusCode = "statusCode"
    case ErrorCode = "errorCode"
    case ErrorMessage = "errorMessage"
    case ArrivalTime = "arrivalTime"
    case DepartureTime = "departureTime"
    case SummaryHTML = "summaryHTML"
    case Legs = "legs"
    case OriginPlacePointID = "originPlacePointID"
    case DestinationPlacePointID = "destinationPlacePointID"
    case Duration = "duration"
    case Distance = "distance"
    case Stop = "stop"
    case Type = "type"
    case LinkedTransitRouteInfo = "linkedTransitRouteInfo"
    case LinkedTransitTripInfo = "linkedTransitTripInfo"
    case ScheduledStopCalls = "scheduledStopCalls"
}

extension Dictionary where Key: StringLiteralConvertible, Value: AnyObject {
    subscript(key:JSONKey) -> AnyObject? {
        get {
            if let dict = (self as? AnyObject) as? [String:AnyObject] {
                return dict[key.rawValue]
            }
            return nil
        }
    }
}
