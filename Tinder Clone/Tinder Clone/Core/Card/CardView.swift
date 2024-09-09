//
//  CardView.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import SwiftUI

struct CardView: View {
    
    //MARK: - Varaibles
    @EnvironmentObject var matchManager: MatchManager
    @ObservedObject var viewModel : CardViewModel
    @State private var xOffSet : CGFloat = 0
    @State private var degree : CGFloat = 0
    @State private var currentIndex  = 0
    @State private var showProfileView  = false
    
    var card : CardModel
    
    var body: some View {
        ZStack(alignment: .bottom){
            ZStack(alignment: .top){
                Image(user.imageUrls[currentIndex])
                    .resizable()
                    .scaledToFill()
                    .background(Color.gray)
                    .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                    .overlay{
                        ImageScrollingOverlay(currentIndex: $currentIndex, imageCount: imagesCount)
                    }
                
                SwipeActionIndicatorView(xOffset: $xOffSet)
                
                CardImageIndicatorView(currentIndex: currentIndex, imageCount: imagesCount)
            }
            
            UserInfoView(showProfileView: $showProfileView, user: user)
            
        }
        .fullScreenCover(isPresented: $showProfileView, content: {
            UserProfileView(user: user)
        })
        .onReceive(viewModel.$buttonSwipeAction, perform: { action in
            onReceiveSwipeAction(action)
        })
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffSet)
        .rotationEffect(.degrees(degree))
        .animation(.snappy, value: xOffSet)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
        
    }
}

private extension CardView{
    
    var user : User{
        return card.user
    }
    
    var imagesCount : Int{
        return card.user.imageUrls.count
    }
    
    func swipeRight(){
        withAnimation {
            xOffSet = 500
            degree = 12
        } completion: {
            viewModel.removeCard(card: card)
        }
        
    }
    
    func swipeLeft(){
        
        withAnimation {
            xOffSet = -500
            degree = -12
            
        } completion: {
            viewModel.removeCard(card: card)
        }
        
    }
    
    func returnToCenter(){
        xOffSet = 0
        degree = 0
    }
    
    func onReceiveSwipeAction(_ action: SwipeAction?){
        guard let action = action else {return}
        
        let topCard = viewModel.cards.last
        
        if topCard == card{
            
            switch action{
                case .like:
                    swipeRight()
                    
                case .reject:
                    swipeLeft()
            }
        }
    }
}

private extension CardView{
    
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value){
        xOffSet = value.translation.width
        degree = Double(value.translation.width/25)
    }
    
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value){
        let width = value.translation.width
        
        if abs(width) <= abs(SizeConstants.screenCutOff){
            returnToCenter()
            return
        }
        
        if width >= SizeConstants.screenCutOff{
            swipeRight()
        }
        else{
            swipeLeft()
        }
    }
}


#Preview {
    CardView(viewModel: CardViewModel(), card: CardModel(user: MocData.users[1]))
}
