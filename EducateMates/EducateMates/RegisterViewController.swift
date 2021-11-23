//
//  RegisterViewController.swift
//  EducateMates
//
//  Created by John Nguyen on 11/23/21.
//

import UIKit
import Parse

class RegisterViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var majorminorLabel: UILabel!
    @IBOutlet weak var majorminorTextField: UITextField!
    @IBOutlet weak var classifcationLabel: UILabel!
    @IBOutlet weak var classificationTextField: UITextField!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var bioTextField: UITextField!
    @IBOutlet weak var classesTextField: UITextField!
    @IBOutlet weak var classesLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onRegister(_ sender: Any) {
        let user = PFUser()
        user.username = usernameTextField.text!
        user.password = passwordTextField.text!
        
        user["name"] = nameTextField.text!
        user["school"] = schoolTextField.text!
        user["majorsminors"] = majorminorTextField.text!
        user["classification"] = classificationTextField.text!
        user["classes"] = classesTextField.text!
        user["bio"] = bioTextField.text!
        
        user.signUpInBackground { (success,error) in
            if success {
                self.performSegue(withIdentifier: "registerSegue", sender: nil)
            } else {
                print("Error: \(error?.localizedDescription)")
            }
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
