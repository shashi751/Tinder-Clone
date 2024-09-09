//
//  MatchView.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import SwiftUI

struct MatchView: View {
    
    @Binding var show : Bool
    
    var user : User
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .fill(.black.opacity(0.7))
                .ignoresSafeArea()
            
            VStack(spacing: 150) {
                
                VStack{
                    Text("It's Match!")
                        .font(.system(size: 44))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("You and \(user.name) have liked each other.")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                }
                
                HStack(spacing:20){
                    Image(.dev1)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                                .stroke(lineWidth: 2)
                                .foregroundColor(.white)
                        }
                    if let image = user.imageUrls.first{
                        Image(image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .overlay {
                                Circle()
                                    .stroke(lineWidth: 2)
                                    .foregroundColor(.white)
                            }
                    }
                    
                }
                
                VStack(spacing:16){
                    
                    Button("Send Message") {
                        
                    }
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: SizeConstants.cardWidth, height: 44)
                    .background{
                        Rectangle()
                            .fill(.pink)
                            .cornerRadius(22)
                    }
                    
                    
                    
                    Button("Keep Swiping") {
                        
                    }
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: SizeConstants.cardWidth, height: 44)
                    .background{
                        Capsule()
                            .stroke(lineWidth: 2)
                            .fill()
                            .foregroundStyle(Color.white)
                    }
                }
            }
        }
        
        
    }
}

#Preview {
    MatchView(show: .constant(true), user: MocData.users[1])
}
