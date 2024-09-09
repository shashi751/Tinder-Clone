//
//  ContentView.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var matchManager = MatchManager()
    
    var body: some View {
        MainTabView()
            .environmentObject(matchManager)
    }
}

#Preview {
    ContentView()
}
