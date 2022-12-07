//
//  HomeViewController.swift
//  TravelApp
//
//  Created by Alper Us on 2022-12-06.
//

import UIKit

class HomeViewController : UIViewController {
    
    @objc
    func avatarHandler(){
        let alert = UIAlertController(title: "Avatar Selector", message: "Do you want to change your avatar?", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Camera", style: .default , handler: nil))
        alert.addAction(UIAlertAction(title: "Photos", style: .default , handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: .default , handler: nil))
        
        self.navigationController?.present(alert, animated: true)
    }
    
    lazy var avatarView : UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(named: "placeholder")
        iv.widthAnchor.constraint(equalToConstant: 160).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 160).isActive = true
        iv.layer.cornerRadius = 80
        iv.isUserInteractionEnabled = true
        iv.addGestureRecognizer(UITapGestureRecognizer(target: self , action: #selector(avatarHandler)))
        
        return iv
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        view.addSubview(avatarView)
        NSLayoutConstraint.activate([
            avatarView.topAnchor.constraint(equalTo: view.topAnchor,constant: 120),
            avatarView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        
    }
}
