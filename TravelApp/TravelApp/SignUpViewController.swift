//
//  SignUpViewController.swift
//  TravelApp
//
//  Created by Alper Us on 2022-12-06.
//

import UIKit

class SignUpViewController: UIViewController{

    lazy var logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "logo")
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    lazy var titleLabel:UILabel = {
        let label = UILabel()
        label.text = "Karen Trip"
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var userNameTF : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "User Name"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 25
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return tf
    }()
    
    lazy var emailTF : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Email"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 25
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true

        return tf
    }()
    
    lazy var passwordTF : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Password"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 25
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true

        return tf
    }()
    
    lazy var signUpButton : UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for:.normal)
        button.backgroundColor = UIColor.green
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.layer.cornerRadius = 25
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.addTarget(self, action: #selector(signUpHandler), for: .touchUpInside)

        return button
        
    }()
    
    lazy var textFieldStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(userNameTF)
        stackView.addArrangedSubview(emailTF)
        stackView.addArrangedSubview(passwordTF)
        stackView.spacing = 20
        stackView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stackView
    }()
    
    
    lazy var contentStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.addArrangedSubview(logoImageView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(textFieldStackView)
        stackView.addArrangedSubview(signUpButton)
        stackView.spacing = 50
        return stackView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign Up"
        view.backgroundColor = UIColor.white
        
        view.addSubview(contentStack)
        NSLayoutConstraint.activate([
            contentStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contentStack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc
    func signUpHandler() {
        print("Handler call")
        let vc = TabBarViewController()
        AppRouter.navigate(to: vc)
    }
    
}
