//
//  SpeedController.swift
//  ClothesAssistant
//
//  Created by Stepan Vasiljeu on 1/4/19.
//  Copyright © 2019 Stepan Vasiljeu. All rights reserved.
//

import UIKit

class SpeedController: UIViewController {
    
    @IBOutlet weak var massTextField: UITextField!
    @IBOutlet weak var speedTextField: UITextField!
    @IBOutlet weak var speedSegmentedControl: UISegmentedControl!
    
    @IBAction func submit(_ sender: AnyObject) {
        if speedSegmentedControl.selectedSegmentIndex == 0 {
            let mass = (massTextField.text! as NSString).floatValue
            let speedFPS = (speedTextField.text! as NSString).floatValue
            let joule = (((mass / 100000) * ((speedFPS / 3.280884) * (speedFPS / 3.280884))) / 2)
            let fpsINms = (speedFPS / 3.280884)
            let standartMassSpeedFPS = (sqrt((2 * joule) / (0.0002)) )
            
            let alertVC = UIAlertController(title: "Your calculate:", message: "Energy = " + String(format:"%.1f", joule) + " J " + ("\n") + "Speed = " + String(format:"%.1f", fpsINms) + " m/s" + ("\n") + "Speed at a mass of 0.2 gramm = " + String(format:"%.1f", standartMassSpeedFPS) + " fps", preferredStyle: .alert)
            let actionSave = UIAlertAction(title: "Save", style: .default) { (action) in
                UIPasteboard.general.string = "Energy = " + String(format:"%.1f", joule) + " J " + ("\n") + "Speed = " + String(format:"%.1f", fpsINms) + " m/s" + ("\n") + "Speed at a mass of 0.2 gramm = " + String(format:"%.1f", standartMassSpeedFPS) + " fps"
            }
            let actionCancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            }
            alertVC.addAction(actionSave)
            alertVC.addAction(actionCancel)
            self.present(alertVC, animated: true) {
                print("Allert is M/S")
            }
        }
        if speedSegmentedControl.selectedSegmentIndex == 1 {
            let mass = (massTextField.text! as NSString).floatValue
            let speedMS = (speedTextField.text! as NSString).floatValue
            let joule = (((mass / 100000) * (speedMS * speedMS)) / 2)
            let msINfps = (speedMS * 3.280884)
            let standartMassSpeedMS = ( sqrt((2 * joule) / (0.0002)) )
            
            let alertVC = UIAlertController(title: "Your calculate:", message: "Energy = " + String(format:"%.1f", joule) + " J " + ("\n") + "Speed = " + String(format:"%.1f", msINfps) + " fps " + ("\n") + "Speed at a mass of 0.2 gramm = " + String(format:"%.1f", standartMassSpeedMS) + " m/s", preferredStyle: .alert)
            let actionSave = UIAlertAction(title: "Save", style: .default) { (action) in
                UIPasteboard.general.string = "Energy = " + String(format:"%.1f", joule) + " J " + ("\n") + "Speed = " + String(format:"%.1f", msINfps) + " fps " + ("\n") + "Speed at a mass of 0.2 gramm = " + String(format:"%.1f", standartMassSpeedMS) + " m/s"
            }
            let actionCancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            }
            alertVC.addAction(actionSave)
            alertVC.addAction(actionCancel)
            self.present(alertVC, animated: true) {
                print("Allert is FPS")
            }
        }
    }
        
    @IBAction func speedSegmentedControl(_ sender: Any) {
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn (_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
