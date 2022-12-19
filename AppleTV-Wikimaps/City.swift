//
//  City.swift
//  AppleTV-Wikimaps
//
//  Created by Abhilash k George on 05/12/22.
//
import CoreLocation
import Foundation

struct City: Comparable {
    var name: String
    var country: String
    var coordinates: CLLocationCoordinate2D

    var formattedName: String {
        return "\(name) (\(country))"
    }

    static func <(lhs: City, rhs: City) -> Bool {
        return lhs.name < rhs.name
    }

    static func ==(lhs: City, rhs: City) -> Bool {
        return lhs.name == rhs.name
    }

    func matches(_ text: String) -> Bool {
        return name.localizedCaseInsensitiveContains(text) || country.localizedCaseInsensitiveContains(text)
    }
}
