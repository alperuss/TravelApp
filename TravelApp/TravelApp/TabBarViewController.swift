//
//  TabBarViewController.swift
//  TravelApp
//
//  Created by Alper Us on 2022-12-06.
//

import UIKit

class TabBarViewController : UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = HomeViewController()
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home"),tag: 0)
        
        let friendsVC = FriendsViewController()
        friendsVC.tabBarItem = UITabBarItem(title: "Friends", image:UIImage(named: "friends"),tag: 0)

        tabBar.backgroundColor = UIColor.white
        
        viewControllers = [homeVC, friendsVC]
    }
    
    
}
