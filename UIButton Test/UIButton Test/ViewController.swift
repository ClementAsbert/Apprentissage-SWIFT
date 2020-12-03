//
//  ViewController.swift
//  UIButton Test
//
//  Created by Clément ASBERT on 08/11/2020.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var labelColor: UILabel!
    
    @IBOutlet weak var colorButton: UIButton!
    // MARK: - View Metods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: -Actions
    
    @IBAction func updateButtonTapped(_ sender: UIButton) {
        
        labelColor.textColor = colorButton.backgroundColor
    }
    
    @IBAction func changeColorTapped(_ sender: UIButton) {
        
        
         let newColor = getRandomColor()
         updateColorButton(withColor: newColor)
    }
    
    func getRandomColor() -> UIColor{
        let randomRed = Float(Int.random(in: 0 ... 255)) / 255.0
        let randomGreen = Float(Int.random(in: 0 ... 255)) / 255.0
        let randomBlue = Float(Int.random(in: 0 ... 255)) / 255.0
        
        let newColor = UIColor(red: CGFloat(randomRed), green: CGFloat(randomGreen), blue: CGFloat(randomBlue), alpha: 1.0)
        
        return newColor
    }
    
    func updateColorButton(withColor newColor: UIColor){
        colorButton.backgroundColor = newColor
    }
}

