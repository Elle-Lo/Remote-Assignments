//
//  ViewController.swift
//  AppWorks School App
//
//  Created by Tzu ning Lo on 2024/7/1.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    
    func segmentDefault() {
        checkLabel.alpha = 0.5
        checkTextField.backgroundColor = .gray
        checkTextField.text = ""
        checkTextField.isUserInteractionEnabled = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleNormalTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        let titleSelectedTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        segmentOutlet.setTitleTextAttributes(titleNormalTextAttributes, for: .normal)
        segmentOutlet.setTitleTextAttributes(titleSelectedTextAttributes, for: .selected)
        segmentOutlet.layer.borderWidth = 2.1
       
        segmentDefault()
         
    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        
        if segmentOutlet.selectedSegmentIndex == 0 {
            segmentDefault()
        } else {
            checkLabel.alpha = 1
            checkTextField.backgroundColor = .white
            checkTextField.isUserInteractionEnabled = true
        }
        
    }
    
    @IBAction func button(_ sender: UIButton) {
        
        switch segmentOutlet.selectedSegmentIndex {
        case 0:
            
            guard let account = accountTextField.text, !account.isEmpty else {
                showAlert(message: messages[0])
                return
            }
            guard let password = passwordTextField.text, !password.isEmpty else {
                showAlert(message: messages[1])
                return
            }
            
            if account == "appworks_school" && password == "1234" {
                showAlert(title: "Congratulations!", message: messages[5])
            } else {
                showAlert(message: messages[4])
            }
            
        case 1:
            
            guard let account = accountTextField.text, !account.isEmpty else {
                showAlert(message: messages[0])
                return
            }
            guard let password = passwordTextField.text, !password.isEmpty else {
                showAlert(message: messages[1])
                return
            }
            guard let password = checkTextField.text, !password.isEmpty else {
                showAlert(message: messages[2])
                return
            }
            
            if passwordTextField.text != checkTextField.text {
                showAlert(title: "Signup fail", message: messages[3])
            } else {
                showAlert(title: "Signup Success", message: "Your account has been created.")
            }
            
        default:
            return
        }
        
    }
        
    let messages = [
        "Account should not be empty.",
        "Password should not be empty.",
        "Check Password should not be empty.",
        "Check password should equal to password.",
        "Login fail",
        "Login Success"
    ]
    
    func showAlert(title: String = "Error" , message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

