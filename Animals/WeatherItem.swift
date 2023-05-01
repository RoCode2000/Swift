//
//  WeatherItem.swift
//  Animals
//
//  Created by Roger Teong on 1/5/23.
//

import Foundation

struct WeatherItem:Identifiable {
    var id:UUID = UUID()
    var country:String
    var lat: Double
//    var lon: Double
//    var temp_c: Double
//    var temp_f: Double
//    var wind_mph: Double
//    var wind_kph: Double
}
