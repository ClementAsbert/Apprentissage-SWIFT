//
//  ViewController.swift
//  UILabel Test
//
//  Created by Clément ASBERT on 08/11/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var seconde: Int = 0
    var milliseconds: Int = 0
    var minutes: Int = 0
    
    let greenColor = UIColor(red: 0.267, green: 0.741, blue: 0.012, alpha: 1.0)
    let redColor = UIColor(red: 0.718, green: 0.067, blue: 0.012, alpha: 1.0)
    
    @IBOutlet weak var millisecondsLabel: UILabel!
    
    @IBOutlet weak var SecondsLabel: UILabel!
    
    @IBOutlet weak var minutesLabel: UILabel!
    
    @IBOutlet weak var Label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeColor(color: greenColor)
        
        //Créer un timer
        
        Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        
    }
    
    func changeColor(color : UIColor){
        millisecondsLabel.textColor = color
        SecondsLabel.textColor = color
        minutesLabel.textColor = color
        Label1.textColor = color
        label2.textColor = color
        
    }
    
    @objc func timerAction(){
        milliseconds += 10
        
        if (milliseconds == 1000){
            seconde += 1
            milliseconds = 0
        }
        
        if (seconde == 60){
            minutes += 1
            seconde = 0
        }
        
        millisecondsLabel.text = String(format: "%03d", milliseconds)
        SecondsLabel.text = String(format: "%02d", seconde)
        minutesLabel.text = String(format: "%02d", minutes)
        
        if (seconde == 6 && milliseconds == 700){
            changeColor(color: redColor)
        }
        
    }


}

