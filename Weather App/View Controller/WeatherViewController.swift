//
//  WeatherViewController.swift
//  Weather App
//
//  Created by Iyin Raphael on 11/19/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {

    let weather_URL = "http://api.openweathermap.org/data/2.5/weather"
    let app_ID = "e72ca729af228beabd5d20e3b7749713"
    
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
}
