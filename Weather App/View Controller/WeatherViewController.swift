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
    let app_ID = "4ab8981371fde679fb6ce66dabd9f486"
    
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
}
