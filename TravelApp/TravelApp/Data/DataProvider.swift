//
//  DataProvider.swift
//  TravelApp
//
//  Created by Alper Us on 2022-12-07.
//

import UIKit

class DataProvider{
    
    static func makeMockData() -> [(String ,[User])] {
        
        var aSection : [User] = []
        var bSection : [User] = []
        var cSection : [User] = []
       
        
        aSection.append(
            User(
                nickName:"Alexander Valley",
                location: "Vancouver",
                age: "29",
                image: UIImage(named: "a1")
        )
        )
        aSection.append(
            User(
                nickName:"Alex Stanton",
                location: "Vancouver",
                age: "32",
                image: UIImage(named: "a2")
        )
        )
        bSection.append(
            User(
                nickName:"Brian Self",
                location: "Montreal",
                age: "40",
                image: UIImage(named: "b1")
        )
        )
        bSection.append(
            User(
                nickName:"Alexander Valley",
                location: "Vancouver",
                age: "29",
                image: UIImage(named: "a1")
        )
        )
        bSection.append(
            User(
                nickName:"Alexander Valley",
                location: "Vancouver",
                age: "29",
                image: UIImage(named: "a1")
        )
        )
        
        cSection.append(
            User(
                nickName:"Alexander Valley",
                location: "Vancouver",
                age: "29",
                image: UIImage(named: "a1")
        )
        )
        
        cSection.append(
            User(
                nickName:"Alexander Valley",
                location: "Vancouver",
                age: "29",
                image: UIImage(named: "a1")
        )
        )
        
        return [
        ("A", aSection),
        ("B" , bSection),
        ("C" , cSection)
        ]
        
        
    }
}
