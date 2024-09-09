//
//  CardImageIndicatorView.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import SwiftUI

struct CardImageIndicatorView: View {
    
    var currentIndex : Int
    let imageCount : Int
    
    var body: some View {
        HStack{
            ForEach(0..<imageCount, id: \.self){ index in
                Capsule()
                    .frame(width: indicatorWidth, height: 4)
                    .foregroundStyle(currentIndex == index ? .white : .gray)
                    .padding(.top, 8)
            }
        }
    }
}

private extension CardImageIndicatorView{
    
    var indicatorWidth : CGFloat{
        UIScreen.main.bounds.width / CGFloat(imageCount) - 28
    }
}

#Preview {
    CardImageIndicatorView(currentIndex: 1, imageCount: 4)
}
