//
//  WeatherDataModel.swift
//  Weather App
//
//  Created by Iyin Raphael on 11/19/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit

class WeatherDataModel {
    
    var temperature: Int
    var condition: Int
    var city: String
    var weatherIconName: String
    init(temperature: Int, condition: Int, city: String, weatherIconName: String){
        
        self.temperature = temperature
        self.condition = condition
        self.city = city
        self.weatherIconName = weatherIconName
    }
    
}
