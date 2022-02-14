//
//  ContentView.swift
//  CryptoTracker
//
//  Created by Kumar, Neeraj on 15/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                Text("Accent Color")
                    .foregroundColor(Color.theme.accent)
                Text("Secondary Color")
                    .foregroundColor(Color.theme.SecondaryText)
                Text("Red Color")
                    .foregroundColor(Color.theme.red)
                Text("Green Color")
                    .foregroundColor(Color.theme.green)
            }
            .font(.headline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
