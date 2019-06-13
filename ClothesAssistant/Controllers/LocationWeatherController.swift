//
//  LocationWeatherController.swift
//  ClothesAssistant
//
//  Created by Stepan Vasiljeu on 1/7/19.
//  Copyright © 2019 Stepan Vasiljeu. All rights reserved.
//

import UIKit

class LocationWeatherController: UIViewController {

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
    
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    
    @IBAction func submitLocWeather(_ sender: AnyObject) {
        
        let apiId: String = "4d24cbf9d70b0c3cedc62cc36c70ec13"
//        let latitude: String = latitudeTextField.text!
//        let longitude: String = longitudeTextField.text!
        
        let locationCoordinate: String = latitudeTextField.text!.replacingOccurrences(of: ", ", with: "&lon=")
        
//        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=" + latitude + "&lon=" + longitude + "&appid=" + apiId) else { return }
        
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
                self.tempLabel.text = ("\(tempCelsius) °C")
                self.minMaxTemperature.text = ("Min \(tempCelsiusMin) °C; Max \(tempCelsiusMax) °C")
                self.pressure.text = ("Pressure \(weather.main!.pressure!), hPa")
                self.humidity.text = ("Humidity \(weather.main!.humidity!), %")
                self.windSpeed.text = ("Wind speed  \(weather.wind!.speed!), m/s")
                self.windDirection.text = ("Wind direction \(weather.wind!.deg!), °")
                self.cloudiness.text = ("Cloudiness \(weather.clouds!.all!), %")
                self.tempWindChillFactorLabel.text = ("\(NSString(format:"%.1f", tempWindChillFactor))°C")
            })
            }.resume()
        latitudeTextField.resignFirstResponder()
        longitudeTextField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn (_ textField: UITextField) -> Bool {
        latitudeTextField.resignFirstResponder()
        longitudeTextField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
