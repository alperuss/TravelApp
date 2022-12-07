//
//  AppRouter.swift
//  TravelApp
//
//  Created by Alper Us on 2022-12-06.
//

import UIKit

class AppRouter {
    static func navigate (to vc : UIViewController){
        if let scenedDelegate =  UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate {
            let nc = UINavigationController(rootViewController: vc)
                scenedDelegate.window?.rootViewController = nc
        }
        
       
    }
}
