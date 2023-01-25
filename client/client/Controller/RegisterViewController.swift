//
//  RegisterViewController.swift
//  client
//
//  Created by matheusvb on 25/01/23.
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate {

    private var firstName: String?
    private var lastName: String?
    private var email: String?
    private var password: String?
    private var location: String?
    private var occupation: String?

    private lazy var registerButton: UIButton = {
        let button: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 280, height: 60))
        button.backgroundColor = .white
        button.setTitle("register", for: .normal)
        button.setTitleColor(UIColor(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        button.layer.cornerRadius = 20
        button.center.x = view.center.x
        button.center.y = view.center.y + 220
        button.addTarget(self, action: #selector(tapRegister), for: .touchUpInside)
        return button
    }()
    
    private lazy var titleLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Login"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        
        return label
    }()
    
    private lazy var firstNameField: UITextField = {
        let txtField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 60))
        txtField.center.x = view.center.x
        txtField.center.y = view.center.y - 280
        txtField.backgroundColor = UIColor.white
        txtField.placeholder = "      First Name"
        txtField.layer.cornerRadius = 20
        txtField.returnKeyType = .next
        return txtField
    }()
    
    private lazy var lastNameField: UITextField = {
        let txtField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 60))
        txtField.center.x = view.center.x
        txtField.center.y = view.center.y - 200
        txtField.backgroundColor = UIColor.white
        txtField.placeholder = "      Last Name"
        txtField.layer.cornerRadius = 20
        txtField.returnKeyType = .next
        return txtField
    }()
    
    private lazy var emailField: UITextField = {
        let txtField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 60))
        txtField.center.x = view.center.x
        txtField.center.y = view.center.y - 120
        txtField.keyboardType = .emailAddress
        txtField.backgroundColor = UIColor.white
        txtField.placeholder = "      email"
        txtField.layer.cornerRadius = 20
        txtField.returnKeyType = .next
        return txtField
    }()
    
    private lazy var passwordField: UITextField = {
        let txtField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 60))
        txtField.center.x = view.center.x
        txtField.center.y = view.center.y - 40
        txtField.isSecureTextEntry = true
        txtField.backgroundColor = UIColor.white
        txtField.placeholder = "      Password"
        txtField.layer.cornerRadius = 20
        txtField.returnKeyType = .next
        return txtField
    }()
    
    private lazy var locationField: UITextField = {
        let txtField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 60))
        txtField.center.x = view.center.x
        txtField.center.y = view.center.y + 40
        txtField.backgroundColor = UIColor.white
        txtField.placeholder = "      Location"
        txtField.layer.cornerRadius = 20
        txtField.returnKeyType = .next
        return txtField
    }()
    
    private lazy var occupationField: UITextField = {
        let txtField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 60))
        txtField.center.x = view.center.x
        txtField.center.y = view.center.y + 120
        txtField.backgroundColor = UIColor.white
        txtField.placeholder = "      Occupation"
        txtField.layer.cornerRadius = 20
        txtField.returnKeyType = .next
        return txtField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        firstNameField.delegate = self
        lastNameField.delegate = self
        emailField.delegate = self
        passwordField.delegate = self
        locationField.delegate = self
        occupationField.delegate = self
        
        view.addSubview(firstNameField)
        view.addSubview(lastNameField)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(locationField)
        view.addSubview(occupationField)
        view.addSubview(registerButton)
        
        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        if textField == firstNameField {
            firstName = textField.text
        } else if textField == lastNameField {
            lastName = textField.text
        } else if textField == emailField {
            email = textField.text
        } else if textField == passwordField {
            password = textField.text
        } else if textField == locationField {
            location = textField.text
        } else if textField == occupationField {
            occupation = textField.text
        }
        
        print("\(textField.placeholder): \(textField.text)")
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
        
        if textField == firstNameField {
            firstName = textField.text
        } else if textField == lastNameField {
            lastName = textField.text
        } else if textField == emailField {
            email = textField.text
        } else if textField == passwordField {
            password = textField.text
        } else if textField == locationField {
            location = textField.text
        } else if textField == occupationField {
            occupation = textField.text
        }
        
        return
    }
    
    @objc func tapRegister() {
        //REGISTER - API
    }

}
