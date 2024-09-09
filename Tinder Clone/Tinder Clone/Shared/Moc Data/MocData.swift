//
//  MocData.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import Foundation

struct MocData{
    
    static let users = [User(id: UUID().uuidString,
                             name: "Shahsi",
                             age: 30,
                             summary: "Senior Software Engineer at Cornerstone onDemand",
                             imageUrls: ["dev2", "dev2", "dev3"]),
                        User(id: UUID().uuidString,
                             name: "Vishal",
                             age: 28,
                             summary: "Android Developer at Pairroxz Technology",
                             imageUrls: ["dev4", "dev1"])]
    
}
