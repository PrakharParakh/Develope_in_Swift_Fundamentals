//
//  ViewController.swift
//  Controls in Action
//
//  Created by admin on 07/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nametextLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func setText(_ sender: UIButton) {
        nameLabel.text = "\(nametextLabel.text!)"
    }
    
    
    @IBAction func clearText(_ sender: UIButton) {
        nameLabel.text = " "
    }
    
    @IBAction func nameFiled(_ sender: UITextField) {
        if let text = sender.text {
            nametextLabel.text = text
        }
    }
    
}

