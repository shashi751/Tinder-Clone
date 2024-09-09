//
//  ImageScrollingOverlay.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import SwiftUI

struct ImageScrollingOverlay: View {
    
    @Binding var currentIndex : Int
    let imageCount : Int
    
    var body: some View {
        
        HStack(spacing:0){
            Rectangle()
                .onTapGesture {
                    updateImageIndex(increment: false)
                }
            Rectangle()
                .onTapGesture {
                    updateImageIndex(increment: true)
                }
        }
        .foregroundColor(.white.opacity(0.1))
    }
}

private extension ImageScrollingOverlay{
    
    func updateImageIndex(increment:Bool){
        
        if increment{
            guard (currentIndex < imageCount-1) else{return}
            currentIndex += 1
        }
        else{
            guard (currentIndex > 0) else{return}
            currentIndex -= 1
        }
    }
}

#Preview {
    ImageScrollingOverlay(currentIndex: .constant(1), imageCount: 3)
        
}
