//
//  SignUpViewController.swift
//  giftly
//
//  Created by Scholar on 8/2/22.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    var emailText = ""
    
    @IBOutlet weak var passwordTextField: UITextField!
    var passwordLength = 0
    
    @IBOutlet weak var passwordPrompt: UILabel!
  
    @IBOutlet weak var validEmail: UILabel!
    
    @IBOutlet weak var notOver: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordPrompt.isHidden = true
        passwordTextField.isHidden = true
        validEmail.isHidden = true
        notOver.isHidden = true
    }
    
    
    @IBAction func nextTapped(_ sender: Any) {
        
        if let email = emailTextField.text {
            emailText = email
        }
        
        if emailText == "michelleaklufi@gmail.com" {
            passwordPrompt.isHidden = false
            passwordTextField.isHidden = false
        } else {
            validEmail.isHidden = false
        }
        
        if let password = passwordTextField.text {
            passwordLength = password.count
        }
        
        if passwordLength > 8 {
            performSegue(withIdentifier: "segue1", sender: nil)
        } else if passwordLength != 0 {
            notOver.isHidden = false
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
