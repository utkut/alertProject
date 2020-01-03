//
//  ViewController.swift
//  AlertProject
//
//  Created by Utku Tarhan on 1/1/20.
//  Copyright © 2020 Utku Tarhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var verifyPasswordText: UITextField!
    
    
    @IBAction func signupClicked(_ sender: Any) {
        
        func makeAlert(titleInput: String, messageInput: String){
            
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
        }
        
        
        if usernameText.text == "" {
           makeAlert(titleInput: "Error", messageInput: "Username Not Found ! ")
        } else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password Not Found ! ")
        } else if verifyPasswordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Verify Password Not Found ! ")
        } else if verifyPasswordText.text != passwordText.text  {
            makeAlert(titleInput: "Error", messageInput: "Passwords do not match ! ")
        } else {
            makeAlert(titleInput: "Success", messageInput: "User Success!")
            
        }
        
        
    }
    
}

