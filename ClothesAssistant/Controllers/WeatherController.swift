//
//  WeatherController.swift
//  WeatherDemo
//
//  Created by Stepan Vasiljeu on 12/30/18.
//  Copyright © 2018 Stepan Vasiljeu. All rights reserved.
//

import UIKit

class WeatherController: UIViewController {
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var minMaxTemperature: UILabel!
    @IBOutlet weak var pressure: UILabel!
    @IBOutlet weak var humidity: UILabel!
    @IBOutlet weak var windSpeed: UILabel!
    @IBOutlet weak var windDirection: UILabel!
    @IBOutlet weak var cloudiness: UILabel!
    @IBOutlet weak var tempWindChillFactorLabel: UILabel!
    @IBOutlet weak var weatherSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBAction func submitWeather(_ sender: AnyObject) {
        
        if weatherSegmentedControl.selectedSegmentIndex == 0 {
            let apiId: String = "4d24cbf9d70b0c3cedc62cc36c70ec13"
            
            let cityApi: String = cityTextField.text!.replacingOccurrences(of: " ", with: "%20")
            
            guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=" + cityApi + "&appid=" + apiId) else { return }
            
            let request = URLRequest(url: url)
            let session = URLSession.shared
            
            session.dataTask(with: request) { data, response, error in
                guard let jsonData = data else {return}
                let weather = try! JSONDecoder().decode(WeatherProperty.self, from: jsonData)
                
                DispatchQueue.main.sync(execute: {
                    let tempCelsius = fahrenheitInCelsius(fahrenheitTemp: (weather.main!.temp))
                    let tempCelsiusMin = fahrenheitInCelsius(fahrenheitTemp: (weather.main!.tempMin!))
                    let tempCelsiusMax = fahrenheitInCelsius(fahrenheitTemp: (weather.main!.tempMax!))
                    let tempWindChillFactor = windColdIndex(tempAir: tempCelsius, speedWind: Double(weather.wind!.speed!))
                    
                    self.cityLabel.text = weather.name
                    self.descriptionLabel.text = weather.weather![0].description
                    self.tempLabel.text = ("\(NSString(format:"%.1f", tempCelsius)) °C")
                    self.minMaxTemperature.text = ("Min \(tempCelsiusMin) °C; Max \(tempCelsiusMax) °C")
                    self.pressure.text = ("Pressure \(weather.main!.pressure!), hPa")
                    self.humidity.text = ("Humidity \(weather.main!.humidity!), %")
                    self.windSpeed.text = ("Wind speed  \(weather.wind!.speed!), m/s")
                    self.windDirection.text = ("Wind direction \(weather.wind!.deg!), °")
                    self.cloudiness.text = ("Cloudiness \(weather.clouds!.all!), %")
                    self.tempWindChillFactorLabel.text = ("\(NSString(format:"%.1f", tempWindChillFactor)) °C")
                })
                }.resume()
            cityTextField.resignFirstResponder()
        }
        
        if weatherSegmentedControl.selectedSegmentIndex == 1 {
            let apiId: String = "4d24cbf9d70b0c3cedc62cc36c70ec13"
            
            let locationCoordinate: String = cityTextField.text!.replacingOccurrences(of: ", ", with: "&lon=")
            
            guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=" + locationCoordinate + "&appid=" + apiId) else { return }
            
            let request = URLRequest(url: url)
            let session = URLSession.shared
            
            session.dataTask(with: request) { data, response, error in
                guard let jsonData = data else {return}
                let weather = try! JSONDecoder().decode(WeatherProperty.self, from: jsonData)
                
                DispatchQueue.main.sync(execute: {
                    let tempCelsius = fahrenheitInCelsius(fahrenheitTemp: (weather.main!.temp))
                    let tempCelsiusMin = fahrenheitInCelsius(fahrenheitTemp: (weather.main!.tempMin!))
                    let tempCelsiusMax = fahrenheitInCelsius(fahrenheitTemp: (weather.main!.tempMax!))
                    let tempWindChillFactor = windColdIndex(tempAir: tempCelsius, speedWind: Double(weather.wind!.speed!))
                    
                    self.cityLabel.text = weather.name
                    self.descriptionLabel.text = weather.weather![0].description
                    self.tempLabel.text = ("\(NSString(format:"%.1f", tempCelsius))°C")
                    self.minMaxTemperature.text = ("Min \(tempCelsiusMin) °C; Max \(tempCelsiusMax) °C")
                    self.pressure.text = ("Pressure \(weather.main!.pressure!), hPa")
                    self.humidity.text = ("Humidity \(weather.main!.humidity!), %")
                    self.windSpeed.text = ("Wind speed  \(weather.wind!.speed!), m/s")
                    self.windDirection.text = ("Wind direction \(weather.wind!.deg!), °")
                    self.cloudiness.text = ("Cloudiness \(weather.clouds!.all!), %")
                    self.tempWindChillFactorLabel.text = ("\(NSString(format:"%.1f", tempWindChillFactor))°C")
                })
                }.resume()
            cityTextField.resignFirstResponder()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn (_ textField: UITextField) -> Bool {
        cityTextField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
