//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    var timer: Timer?
    var counter = 3
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        
        //print(eggTimes[hardness]!)
        
        func seconds() {
            counter = eggTimes[hardness]!
            //print(eggTimes[hardness]!)
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        seconds()
    }
    
    @objc func updateCounter() {
        if counter > 0 {
            print("\(counter) seconds")
            counter -= 1
            
        }
        
        if counter == 0 {
            print("0 seconds")
            timer?.invalidate()
            timer = nil
        }
    }
    
    
}
