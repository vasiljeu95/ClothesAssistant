//
//  ViewController.swift
//  imageConcurency
//
//  Created by Stepan Vasiljeu on 12/15/18.
//  Copyright © 2018 Stepan Vasiljeu. All rights reserved.
//

import UIKit

class ImageController: UIViewController {
    
    @IBOutlet weak var imageForUrl: UIImageView!
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBAction func secondButton(_ sender: UIButton) {
        let imageURL: URL = URL(string: "http://openweathermap.org/img/w/10d.png")!
        let queue = DispatchQueue.global(qos: .utility)
        queue.async{
            if let data = try? Data(contentsOf: imageURL){
                DispatchQueue.main.async {
                    self.imageForUrl.image = UIImage(data: data)
                    print("Show image data")
                }
                print("Did download  image data")
            }
            
        }
    }
    
    @IBAction func thirdButton(_ sender: UIButton) {
        self.firstLabel.text = "You press button 2"
    }
    
    
    @IBAction func firstButton(_ sender: UIButton) {
        self.secondLabel.text = "You press button 3"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

