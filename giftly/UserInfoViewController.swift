//
//  UserInfoViewController.swift
//  giftly
//
//  Created by Schola
import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    var nameLength = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextTapped(_ sender: Any) {
        if let name = nameTextField.text {
            nameLength = name.count
        }
        
        if nameLength > 2 {
            performSegue(withIdentifier: "segue2", sender: nil)
        } else if nameLength <= 2 {
            
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
