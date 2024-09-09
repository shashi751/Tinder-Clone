//
//  CardStackView.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import SwiftUI

struct CardStackView: View {
    
    @StateObject var viewModel = CardViewModel(service: NetworkService())
    
    var body: some View {
        
        ZStack{
            
            ForEach(viewModel.cards, id: \.id){ card in
                
                CardView(viewModel: viewModel, card: card)
            }
        }

    }
}

#Preview {
    CardStackView()
}
