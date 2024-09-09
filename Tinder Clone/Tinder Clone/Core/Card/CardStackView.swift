//
//  CardStackView.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import SwiftUI

struct CardStackView: View {
    
    @StateObject var viewModel = CardViewModel(service: NetworkService())
    @State var matchManager = MatchManager()
    @State private var showMatchView = false
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                VStack(spacing: 25) {
                    ZStack{
                        ForEach(viewModel.cards, id: \.id){ card in
                            CardView(viewModel: viewModel, card: card)
                        }
                    }
                    
                    if !viewModel.cards.isEmpty{
                        SwipeActionButtonView(viewModel: viewModel)
                    }
                }
                .blur(radius: showMatchView ? 20 : 0)
                
                if showMatchView{
                    MatchView(show: $showMatchView, user: MocData.users[0])
                }
            }
            .toolbar{
                
                ToolbarItem(placement: .topBarLeading) {
                    Image(.logo)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                }
            }
            
        }
    }
}

#Preview {
    CardStackView()
}
