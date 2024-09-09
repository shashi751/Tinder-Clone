//
//  NetworkService.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import Foundation

protocol NetworkServiceProtocol{
    func fetcRequest() async -> [User]
}


class NetworkService:NetworkServiceProtocol{
    
    func fetcRequest() async -> [User]{
        return MocData.users
    }
}
