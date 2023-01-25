//
//  ViewController.swift
//  client
//
//  Created by matheusvb on 19/01/23.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    private var email: String?
    private var password: String?

    private lazy var loginButton: UIButton = {
        let button: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 280, height: 60))
        button.backgroundColor = .link
        button.setTitle("LOGIN", for: .normal)
        button.layer.cornerRadius = 20
        button.center.x = view.center.x
        button.center.y = view.center.y + 120
        button.addTarget(self, action: #selector(tapLogin), for: .touchUpInside)
        
        return button
    }()
    
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
    
    private lazy var emailField: UITextField = {
        let txtField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 80))
        txtField.center.x = view.center.x
        txtField.center.y = view.center.y - 220
        txtField.keyboardType = .emailAddress
        txtField.backgroundColor = UIColor.white
        txtField.placeholder = "      email"
        txtField.layer.cornerRadius = 20
        txtField.returnKeyType = .next
        return txtField
    }()
    
    private lazy var passwordField: UITextField = {
        let txtField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 80))
        txtField.center.x = view.center.x
        txtField.center.y = view.center.y - 100
        txtField.isSecureTextEntry = true
        txtField.backgroundColor = UIColor.white
        txtField.placeholder = "      password"
        txtField.layer.cornerRadius = 20
        txtField.returnKeyType = .next
        return txtField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        emailField.delegate = self
        passwordField.delegate = self
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        view.addSubview(registerButton)
        
        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        if textField == emailField {
            email = textField.text
        } else if textField == passwordField {
            password = textField.text
        }
                
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
        
        if textField == emailField {
            email = textField.text
        } else if textField == passwordField {
            password = textField.text
        }
                
        return
    }
    
    @objc func tapLogin() {
        //LOGIN - API
    }
    
    @objc func tapRegister() {
        let registerVC = RegisterViewController()
        let nav = UINavigationController(rootViewController: registerVC)
        nav.modalPresentationStyle = .fullScreen
        
        present(nav, animated: true)
    }

}

