//
//  SwipeActionButtonView.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import SwiftUI

struct SwipeActionButtonView: View {
    
    @ObservedObject var viewModel : CardViewModel
    
    var body: some View {
        HStack(spacing: 40){
            Button {
                print("DEBUG: Nope tapped")
                viewModel.buttonSwipeAction = .reject
            } label: {
               
                Image(systemName: "xmark")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.red)
                    .background{
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                            .shadow(radius: 6)
                    }
                
            }
            
            Button {
                viewModel.buttonSwipeAction = .like
                
            } label: {
               
                Image(systemName: "heart.fill")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.green)
                    .background{
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                            .shadow(radius: 6)
                    }
                
            }
        }
    }
}


#Preview {
    SwipeActionButtonView(viewModel: CardViewModel())
}
