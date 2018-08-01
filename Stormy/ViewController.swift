//
//  ViewController.swift
//  Stormy
//
//  Created by Pasan Premaratne on 5/8/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentHumidityLabel: UILabel!
    @IBOutlet weak var currentPrecipitationLabel: UILabel!
    @IBOutlet weak var currentWeatherIcon: UIImageView!
    @IBOutlet weak var currentSummaryLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    fileprivate let darkSkyApiKey = "358449ecd6246179d9bb50e954aa939b"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let base = URL(string: "https://api.darksky.net/forecast/\(darkSkyApiKey)/")
        let forecastUrl = URL(string: "37.8267,-122.4233", relativeTo: base)
        
        let request = URLRequest(url: forecastUrl!)
        let session = URLSession(configuration: .default)
        
        
        let dataTask = session.dataTask(with: request) { data, reponse, error in
            print(data)
        }
      
        dataTask.resume()
        
        
        let currentWeather = CurrentWeather(temperature: 85.5, humidity: 0.8, percipProbability: 0.1, summary: "Hot", icon: "clear-day")
        let viewModel = CurrentWeatherViewModel(model: currentWeather)
        
        displayWeather(using: viewModel)
    }
    
    func displayWeather(using viewModel: CurrentWeatherViewModel) {
        currentTemperatureLabel.text = viewModel.temperature
        currentHumidityLabel.text = viewModel.humiditiy
        currentTemperatureLabel.text = viewModel.percipitationProbability
        currentWeatherIcon.image = viewModel.icon
        currentSummaryLabel.text = viewModel.summary
    }
}

