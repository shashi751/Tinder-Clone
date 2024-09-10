//
//  MocData.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import Foundation

struct MocData{
    
    static let users = [User(id: UUID().uuidString,
                             name: "Himanshu",
                             age: 30,
                             summary: "UI/UX Designer at Pairroxz Technology",
                             imageUrls: ["dev1", "dev3", "dev2"]),
                        User(id: UUID().uuidString,
                             name: "Vibha",
                             age: 30,
                             summary: "Business Development Manager at Pairroxz Technology",
                             imageUrls: ["dev4", "dev2", "dev1"]),
                        User(id: UUID().uuidString,
                             name: "Akansha",
                             age: 28,
                             summary: "BUsiness Development Executive at Pairroxz Technology",
                             imageUrls: ["dev2", "dev4", "dev3"]),
                        User(id: UUID().uuidString,
                             name: "Vishal",
                             age: 28,
                             summary: "Android Developer at Pairroxz Technology",
                             imageUrls: ["dev4", "dev1", "dev2"]),
                        User(id: UUID().uuidString,
                             name: "Shahsi Gupta",
                             age: 30,
                             summary: "Senior Software Engineer at Cornerstone onDemand",
                             imageUrls: ["dev2", "dev1", "dev3"])]
    
}
