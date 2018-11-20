//
//  ChangeCityViewController.swift
//  Weather App
//
//  Created by Iyin Raphael on 11/19/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit

class ChangeCityViewController: UIViewController {

    @IBOutlet weak var changeCityTextField: UITextField!
    
    @IBAction func getWeatherButton(_ sender: Any) {
    }
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
