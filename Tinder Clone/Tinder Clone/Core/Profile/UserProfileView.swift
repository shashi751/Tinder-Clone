//
//  UserProfileView.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import SwiftUI

struct UserProfileView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var currentIndex = 0
    let user: User
    
    var body: some View {
        VStack {
            HStack{
                Text(user.name)
                    .font(.title)
                    .fontWeight(.semibold)
                Text("\(user.age)")
                    .font(.title2)
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .imageScale(.large)
                        .fontWeight(.bold)
                        .foregroundColor(.pink)
                }
                
            }
            .padding(.horizontal, 10)
            
            ScrollView {
                
                VStack{
                    ZStack(alignment: .top){
                        Image(user.imageUrls[currentIndex])
                            .resizable()
                            .scaledToFill()
                            .background(Color.gray)
                            .frame(width: SizeConstants.cardWidth+20, height: SizeConstants.cardHeight)
                            .overlay{
                                ImageScrollingOverlay(currentIndex: $currentIndex, imageCount: imagesCount)
                            }
                        
                        
                        CardImageIndicatorView(currentIndex: currentIndex, imageCount: imagesCount)
                    }
                    
                    
                    VStack(alignment: .leading, spacing: 12) {
                        
                        Text("About me")
                            .fontWeight(.semibold)
                        
                        Text(user.summary)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                VStack(alignment: .leading, spacing: 12){
                    Text("Essential")
                        .fontWeight(.semibold)
                    
                    HStack{
                        Image(systemName: "apple.logo")
                        
                        Text("iOS, Swift, Xcode")
                        
                        Spacer()
                    }
                    
                    HStack{
                        Image(systemName: "person.circle")
                        
                        Text("Senior Developer")
                        
                        Spacer()
                    }
                    
                    HStack{
                        Image(systemName: "building.2")
                        
                        Text("Cornerstone onDemand")
                        
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.subheadline)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                VStack(alignment: .leading, spacing: 12){
                    Text("Available on")
                    
                    HStack(alignment: .top){
                        Image(systemName: "network")
                        
                        Text("LinkedIn, Facebook, Github, Instagram, Uplers, Turing, Naukari")
                        
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.headline)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                VStack(alignment: .center, spacing: 12){
                    
                    Button {
                        
                    } label: {
                        Text("Block \(user.name)")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                        
                    }

                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.headline)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                VStack(alignment: .center, spacing: 12){
                    
                    Button {
                        
                    } label: {
                        Text("Report \(user.name)")
                            .foregroundColor(.red)
                            .fontWeight(.bold)
                        
                    }

                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.headline)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
            }
        }
        .padding(.horizontal)
    }
}

private extension UserProfileView{
    
    var imagesCount : Int{
        return user.imageUrls.count
    }
}

#Preview {
    UserProfileView(user: MocData.users[0])
}
