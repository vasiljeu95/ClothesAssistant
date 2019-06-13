//
// /Users/stepanvasiljeu/Desktop/Developers/WeatherDemo/WeatherDemo/Controllers/Functions.swift Functions.swift
//  API Demo
//
//  Created by Stepan Vasiljeu on 12/23/18.
//  Copyright © 2018 Stepan Vasiljeu. All rights reserved.
//

import Foundation

//A function to calculate wind chill factor, where "windColdIndex" is the wind chill index, based on the Celsius temperature scale; "tempAir" is the air temperature in degrees Celsius; and "speedWind" is the wind speed at 10 m, standard anemometer height, in kilometres per hour.
func windColdIndex(tempAir: Double, speedWind: Double) -> Double {
    let windColdIndex: Double = 13.12 + (0.6215 * tempAir) - (11.37 * pow(speedWind, 0.16)) + (0.3965 * tempAir * pow(speedWind, 0.16))
    return windColdIndex
}
//windColdIndex(tempAir: tempAir, speedWind: speedWind)

//A function to recalculate the Fahrenheit temperature in degrees Celsius
func fahrenheitInCelsius (fahrenheitTemp: Double) -> Double {
    let tempCelsius: Double = fahrenheitTemp + (-273.15)
    return tempCelsius
}
//fahrenheitInCelsius(fahrenheitTemp: temp)

