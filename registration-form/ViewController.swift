//
//  ViewController.swift
//  registration-form
//
//  Created by syeda manahil fatima on 18/07/2024.
//

import UIKit

class ViewController: UIViewController {

    //UI labels
    @IBOutlet weak var passmatch: UILabel!
    @IBOutlet weak var successmsg: UILabel!
    //UI text fields
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirm: UITextField!
    //UI buttons
    @IBOutlet weak var signupbutton: UIButton!
    @IBOutlet weak var loginbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clearall()
    }

    func clearall(){
        passmatch.text=""
        successmsg.text=""
    }
    
    @IBAction func signupbutton(_ sender: Any) {
        guard let usernames = username.text, !usernames.isEmpty,
              let emails = email.text, !emails.isEmpty,
              let passwords = password.text, !passwords.isEmpty,
              let confirms = confirm.text, !confirms.isEmpty
              else
        {
            showAlert(message: "please fill all the fields.")
            return
        }
        // Ensure passwords match
               if passwords != confirms {
                   passmatch.text = "Passwords do not match."
                   return
               } else {
                   passmatch.text = ""
               }

               // Proceed with signup logic
               successmsg.text = "Signup successful!"
    }
    
    func showAlert(message: String) {
            let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        }
    @IBAction func loginbutton(_ sender: Any) {
    }
    
}

