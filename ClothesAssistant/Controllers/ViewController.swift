//
//  ViewController.swift
//  ClothesAssistant
//
//  Created by Stepan Vasiljeu on 11/29/18.
//  Copyright © 2018 Stepan Vasiljeu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var missionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var weatherSegmentedControl: UISegmentedControl!
    @IBAction func weatherSegmentedControl(_ sender: Any) {
    }
    @IBOutlet weak var temperatureTextField: UITextField!
    
    func alertViewController (titleAlert: String, messageAlert: String, presentAlert: String) {
        let alertVC = UIAlertController(title: titleAlert, message: messageAlert, preferredStyle: .alert)
        let actionSave = UIAlertAction(title: "Save", style: .default) { (action) in
            UIPasteboard.general.string = titleAlert + ("\n") + messageAlert
        }
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
        }
        alertVC.addAction(actionSave)
        alertVC.addAction(actionCancel)
        self.present(alertVC, animated: true) {
            print(presentAlert)
        }
    }
    
    @IBAction func submitLevels(_ sender: AnyObject) {
        let constantsLevels = ConstantsLevels.self
        if missionSegmentedControl.selectedSegmentIndex == 0 {
            if weatherSegmentedControl.selectedSegmentIndex == 0 {
                let temperature = (temperatureTextField.text! as NSString).integerValue
                switch temperature {
                case (-100)...(-45): //case1
                    alertViewController(titleAlert: constantsLevels.titleAll.rawValue, messageAlert: constantsLevels.messageAll.rawValue, presentAlert: constantsLevels.present00case1.rawValue)
                case -45...(-18): //case2
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message00case2.rawValue, presentAlert: constantsLevels.present00case2.rawValue)
                case -17...(-2): //case3
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message00case3.rawValue, presentAlert: constantsLevels.present00case3.rawValue)
                case -1...6: //case4
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message00case4.rawValue, presentAlert: constantsLevels.present00case4.rawValue)
                case 7...20: //case5
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message00case5.rawValue, presentAlert: constantsLevels.present00case5.rawValue)
                case 21...50: //case6
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message00case6.rawValue, presentAlert: constantsLevels.present00case6.rawValue)
                case 51...100: //case7
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.messageBoxers.rawValue, presentAlert: constantsLevels.present00case7.rawValue)
                default:
                    assert(false, "Temperature \(temperature) out of range")
                }
            }
            
            if weatherSegmentedControl.selectedSegmentIndex == 1 {
                let temperature = (temperatureTextField.text! as NSString).integerValue
                switch temperature {
                case (-100)...(-45): //case1
                    alertViewController(titleAlert: constantsLevels.titleAll.rawValue, messageAlert: constantsLevels.messageAll.rawValue, presentAlert: constantsLevels.present01case1.rawValue)
                case -45...(-18): //case2
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message01case2.rawValue, presentAlert: constantsLevels.present01case2.rawValue)
                case -17...(-2): //case3
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message01case3.rawValue, presentAlert: constantsLevels.present01case3.rawValue)
                case -1...6: //case4
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message01case4.rawValue, presentAlert: constantsLevels.present01case4.rawValue)
                case 7...20: //case5
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message00case4.rawValue, presentAlert: constantsLevels.present01case5.rawValue)
                case 21...50: //case6
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message01case6.rawValue, presentAlert: constantsLevels.present01case6.rawValue)
                case 51...100: //case7
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.messageBoxers.rawValue, presentAlert: constantsLevels.present01case7.rawValue)
                default:
                    assert(false, "Temperature \(temperature) out of range")
                }
            }
        }
        
        
        if missionSegmentedControl.selectedSegmentIndex == 1 {
            if weatherSegmentedControl.selectedSegmentIndex == 0 {
                let temperature = (temperatureTextField.text! as NSString).integerValue
                switch temperature {
                case (-100)...(-45): //case1
                    alertViewController(titleAlert: constantsLevels.titleAll.rawValue, messageAlert: constantsLevels.messageAll.rawValue, presentAlert: constantsLevels.present10case1.rawValue)
                case -45...(-18): //case2
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message10case2.rawValue, presentAlert: constantsLevels.present10case2.rawValue)
                case -17...(-2): //case3
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message10case3.rawValue, presentAlert: constantsLevels.present10case3.rawValue)
                case -1...6: //case4
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message10case4.rawValue, presentAlert: constantsLevels.present10case4.rawValue)
                case 7...20: //case5
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message01case4.rawValue, presentAlert: constantsLevels.present10case5.rawValue)
                case 21...50: //case6
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message00case5.rawValue, presentAlert: constantsLevels.present10case6.rawValue)
                case 51...100: //case7
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.messageBoxers.rawValue, presentAlert: constantsLevels.present10case7.rawValue)
                default:
                    assert(false, "Temperature \(temperature) out of range")
                }
            }
            
            if weatherSegmentedControl.selectedSegmentIndex == 1 {
                let temperature = (temperatureTextField.text! as NSString).integerValue
                switch temperature {
                case (-100)...(-45): //case1
                    alertViewController(titleAlert: constantsLevels.titleAll.rawValue, messageAlert: constantsLevels.messageAll.rawValue, presentAlert: constantsLevels.present11case1.rawValue)
                case -45...(-18): //case2
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message11case2.rawValue, presentAlert: constantsLevels.present11case2.rawValue)
                case -17...(-2): //case3
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message11case3.rawValue, presentAlert: constantsLevels.present11case3.rawValue)
                case -1...6: //case4
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message11case4.rawValue, presentAlert: constantsLevels.present11case4.rawValue)
                case 7...20: //case5
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message11case5.rawValue, presentAlert: constantsLevels.present11case5.rawValue)
                case 21...50: //case6
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.message11case6.rawValue, presentAlert: constantsLevels.present11case6.rawValue)
                case 51...100: //case7
                    alertViewController(titleAlert: constantsLevels.titleUniform.rawValue, messageAlert: constantsLevels.messageBoxers.rawValue, presentAlert: constantsLevels.present11case7.rawValue)
                default:
                    assert(false, "Temperature \(temperature) out of range")
                }
            }
        }
    }
    
    @IBAction func missionSegmentedControl(_ sender: Any) {
        
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
