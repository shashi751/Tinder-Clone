//
//  CardViewModel.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import Foundation

@MainActor
class CardViewModel:ObservableObject{
    
    @Published var cards = [CardModel]()
    @Published var buttonSwipeAction : SwipeAction?
    
    let service : NetworkServiceProtocol
    
    init(service: NetworkServiceProtocol = NetworkService()) {
        self.service = service
        Task{
            await self.getUsers()
        }
    }
    
    func getUsers() async {
        let users = await self.service.fetcRequest()
        self.cards = users.map({CardModel(user: $0)})
    }
    
    func removeCard(card:CardModel){
        guard let index = self.cards.firstIndex(where: {$0.id == card.id}) else {return}
        self.cards.remove(at: index)
    }
}
