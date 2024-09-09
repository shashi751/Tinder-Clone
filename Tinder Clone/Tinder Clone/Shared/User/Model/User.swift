//
//  User.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import Foundation

struct User: Identifiable, Hashable{
    
    var id : String
    var name: String
    var age: Int
    var summary: String
    var imageUrls : [String]
    
}
