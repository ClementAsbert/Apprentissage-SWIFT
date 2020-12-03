//
//  ViewController.swift
//  PremierInterfaceGrpahique
//
//  Created by Clément ASBERT on 08/11/2020.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var NameTextField: UITextField!

    // MARK: -View Méthodes
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Actions
    
    @IBAction func confirmButton(_ sender: UIButton) {
        nameLabel.text = NameTextField.text
        NameTextField.text = ""
    }

}

