//
//  UserInfoView.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import SwiftUI

struct UserInfoView: View {
    
    let user : User
    var body: some View {
        
        VStack(alignment:.leading) {
            HStack{
                Text(user.name)
                    .font(.title)
                    .fontWeight(.heavy)
                Text("\(user.age)")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button{
                    print("DEBUG: Show profile here")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .imageScale(.large)
                        .fontWeight(.bold)
                }
            }
            Text(user.summary)
                .font(.subheadline)
                .fontWeight(.semibold)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
        
    }
}

#Preview {
    UserInfoView(user: MocData.users[0])
}
