//
//  CurrentWeatherViewModel.swift
//  Stormy
//
//  Created by Fiona Podrima on 7/31/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeatherViewModel {
    let temperature: String
    let humiditiy: String
    let percipitationProbability: String
    let summary: String
    let icon: UIImage
 
    init(model: CurrentWeather) {
        let roundedTemperature = Int(model.temperature)
        self.temperature = "\(roundedTemperature)º"
        
        let humidityPercentValue = Int(model.humidity * 100)
        self.humiditiy = "\(humidityPercentValue)%"
        
        let percipitationPercentValue = Int(model.percipProbability * 100)
        self.percipitationProbability = "\(percipitationPercentValue)%"
        
        self.summary = model.summary
        self.icon = model.iconImage
        
    }
}
    
    
    
    

