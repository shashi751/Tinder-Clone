//
//  CardModel.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import Foundation

struct CardModel{
    let user: User
}

extension CardModel:Identifiable, Hashable{
    var id : String{return user.id}
}
