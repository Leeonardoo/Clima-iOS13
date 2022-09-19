//
//  WeatherModel.swift
//  Clima
//
//  Created by Leonardo de Oliveira on 18/09/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var formattedTemperature: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "snowflake"
        case 700...781:
            return "sun.haze"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud"
        default:
            return "questionmark.circle"
        }
    }
}
