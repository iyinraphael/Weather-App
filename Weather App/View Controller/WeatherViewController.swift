//
//  WeatherViewController.swift
//  Weather App
//
//  Created by Iyin Raphael on 11/19/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController, CLLocationManagerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        
        //the best location Accuracy for app depends on which is suitable
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
    }
    
    let weather_URL = "http://api.openweathermap.org/data/2.5/weather"
    let app_ID = "4ab8981371fde679fb6ce66dabd9f486"
    
    //create instance of location manager
    let locationManager = CLLocationManager()
    
    
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
}
