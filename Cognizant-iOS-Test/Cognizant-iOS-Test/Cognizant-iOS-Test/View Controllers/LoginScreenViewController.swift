//
//  ViewController.swift
//  Cognizant-iOS-Test
//
//  Created by Joel James on 19/05/2021.
//

import UIKit

class LoginScreenViewController: UIViewController, UITextFieldDelegate {

    //Textfield and Button setup
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    //handle login button press
    @IBAction func loginButtonPressed(_ sender: Any) {
        //set constants of username and passwords
        let userName = usernameTextField.text
        let userPassword = passwordTextField.text
        // create the alert
        let alert = UIAlertController(title: "Invalid Username or Password", message: "Please enter a correct username and password.", preferredStyle: UIAlertController.Style.alert)

        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        // if username or password textfield is empty
        if  (userName!.isEmpty) || (userPassword!.isEmpty) {
            // show the alert
            self.present(alert, animated: true, completion: nil)
        // segue if textfields have text
        } else {
                performSegue(withIdentifier: "loginSegue", sender: loginButton)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //round login button corners
        loginButton.layer.cornerRadius = 5
    
    }
}
