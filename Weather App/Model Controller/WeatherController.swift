//
//  WeatherController.swift
//  Weather App
//
//  Created by Iyin Raphael on 11/24/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class WeatherController {
    
    //MARK: - Netwroking
    func getWeatherData(url: String, parameters: [String:String]){
        
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON { response in
            if response.result.isSuccess {
                
                let weatherJSON : JSON = JSON(response.result.value!)
                self.updateWeatherData(json: weatherJSON)
            }
            else {
                NSLog("Error \(String(describing: response.result.error))")
            }
        }
        
    }

    
    func updateWeatherData(json : JSON) {
        
        let temperature = Int(json["main"]["temp"].double ?? 0 - 273.15)
        let city = json["name"].stringValue
        let condition = json["weather"][0]["id"].intValue
        let weatherIconName = updateWeatherIcon(condition: condition)
        let weatherData = WeatherDataModel(temperature: temperature, condition: condition, city: city, weatherIconName: weatherIconName)
        
    }
    
    func updateWeatherIcon(condition: Int) -> String {
        switch (condition) {
            
        case 0...300 :
            return "tstorm1"
            
        case 301...500 :
            return "light_rain"
            
        case 501...600 :
            return "shower3"
            
        case 601...700 :
            return "snow4"
            
        case 701...771 :
            return "fog"
            
        case 772...799 :
            return "tstorm3"
            
        case 800 :
            return "sunny"
            
        case 801...804 :
            return "cloudy2"
            
        case 900...903, 905...1000  :
            return "tstorm3"
            
        case 903 :
            return "snow5"
            
        case 904 :
            return "sunny"
            
        default :
            return "dunno"
        }
        
    }
  
    
}
