//
//  WeatherViewController.swift
//  Weather App
//
//  Created by Iyin Raphael on 11/19/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit
import CoreLocation
import Alamofire
import SwiftyJSON

class WeatherViewController: UIViewController, CLLocationManagerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        
        //the best location Accuracy for app depends on which is suitable
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    let weather_URL = "http://api.openweathermap.org/data/2.5/weather"
    let app_ID = "4ab8981371fde679fb6ce66dabd9f486"
    
    //create instance of location manager
    let locationManager = CLLocationManager()
    
    //notifies delegate(self) about updating location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[locations.count - 1]
        if location.horizontalAccuracy > 0 {
            locationManager.stopUpdatingLocation()
            locationManager.delegate = nil
            
            print("longitude = \(location.coordinate.longitude), latitude = \(location.coordinate.latitude)")
            
            let latitude = String(location.coordinate.latitude)
            let longitude = String(location.coordinate.longitude)
            
            let params : [String: String] = ["lat" : latitude, "lon" : longitude, "appid" : app_ID]
            
            getWeatherData(url: weather_URL, parameters: params)
            
            
            
        }
    }
    
    //handles error when updating location
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        NSLog("\(error)")
        cityLabel.text = "Location Unavailable"
    }
    
    
    //MARK: - Netwroking
    
    func getWeatherData(url: String, parameters: [String:String]){
        
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON { response in
            if response.result.isSuccess {
                
                let weatherJSON : JSON = JSON(response.result.value!)
                self.updateWeatherData(json: weatherJSON)
        
            }
            else {
                NSLog("Error \(String(describing: response.result.error))")
                self.cityLabel.text = "Connection Issues"
            }
        }
        
    }
    
    
    func updateWeatherData(json : JSON) {
        
        let tempResult = json["main"]["temp"]
    }
    
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
}
