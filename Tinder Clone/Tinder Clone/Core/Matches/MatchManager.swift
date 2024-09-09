//
//  MatchManager.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import Foundation

class MatchManager:ObservableObject{
    
    @Published var matchedUser : User?
    
    func checkForMatch(_ user: User){
        let didMatch = Bool.random()
        
        if didMatch{
            matchedUser = user
        }
    }
}
