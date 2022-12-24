//
//  ViewController.swift
//  Lab Login
//
//  Created by admin on 08/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var forgotUserName: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserName {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userNameTextField.text
        }
    }
    
    
    @IBAction func forgotUserNameTaped(_ sender: Any) {
        performSegue(withIdentifier: "Landing", sender: sender)
    }
    
    @IBAction func forgotPasswordTapped(_ sender: Any) {
        performSegue(withIdentifier: "Landing", sender: sender)

    }
    
}

