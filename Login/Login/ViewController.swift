//
//  ViewController.swift
//  Login
//
//  Created by Ethan Archibald on 9/13/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameInput: UITextField!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = userNameInput.text
        }
    }

    @IBAction func forgotUsernameButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toLandingView", sender: sender)
        
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "toLandingView", sender: sender)
    }
    
}

