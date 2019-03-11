//
//  ChangeCityViewController.swift
//  Weather App
//
//  Created by Iyin Raphael on 11/19/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit

protocol ChangeCityDelegate {
    func userEnterCityName(city: String)
}

class ChangeCityViewController: UIViewController {

    var delegate: ChangeCityDelegate?
    
    @IBOutlet weak var changeCityTextField: UITextField!
    
    @IBAction func getWeatherButton(_ sender: Any) {
        
        let cityName = changeCityTextField.text!
        delegate?.userEnterCityName(city: cityName)
        self.dismiss(animated: true, completion: nil)
        
    }
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
