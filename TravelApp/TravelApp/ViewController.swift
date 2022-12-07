//
//  ViewController.swift
//  TravelApp
//
//  Created by Alper Us on 2022-12-06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        title = "Welcome"
        print("viewDidLoad is called")
        // Do any additional setup after loading the view.
        
        loginButton.layer.shadowColor = UIColor.gray.cgColor
        loginButton.layer.shadowOpacity = 1.0
        loginButton.layer.shadowOffset = CGSize(width: 10, height: 10)
        
        signUpButton.layer.shadowColor = UIColor.gray.cgColor
        signUpButton.layer.shadowOpacity = 1.0
        signUpButton .layer.shadowOffset = CGSize(width: 10, height: 10)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! LoginViewController
        vc.customTitle = "Custom title is here"
    }
    
    
    @IBAction func signupTapped(_ sender: Any) {
        
        let vc = SignUpViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func loginAction(_ sender: Any) {
        
    
    }
    
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        print("viewWillAppear is called")
//    }
//
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        print("viewWillLayoutSubviews is called")
//    }
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        print("viewDidLayoutSubviews is called")
//
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        print("viewDidAppear is called")
//
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        print("viewWillDisappear is called")
//
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        print("viewDidDisappear is called")
//
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        print("didReceiveMemoryWarning is called")
//
//
//    }
}

