//
//  SettingsViews.swift
//  CryptoTracker
//
//  Created by Kumar, Neeraj on 10/02/22.
//

import SwiftUI

struct SettingsViews: View {
    @Environment(\.presentationMode) var presentationMode
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com")!
    
    let coinGeckoURL = URL(string: "https://coingecko.com")!
    
    var body: some View {
        NavigationView {
            List {
                linksSection
                coingeckoSection
            }
            .font(.headline)
            .accentColor(.blue)
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        debugPrint("button Pressed")
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.headline)
                    }
                }
            }
        }
    }
}

struct SettingsViews_Previews: PreviewProvider {
    static var previews: some View {
        SettingsViews()
    }
}

extension SettingsViews {
    private var linksSection: some View {
        Section(header: Text("Header")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app is made by following a youtube channel swiftful thinking course. It uses MVVM architecture, Combine, CoreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Learn from Google 📖", destination: defaultURL)
            Link("Learn from Youtube 📹", destination: youtubeURL)
            
        }
    }
    
    private var coingeckoSection: some View {
        Section(header: Text("Coin Gecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The crypto currency data comes that is used in this app comes from a free API from coinGecko! Prices maybe slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Learn from Google 📖", destination: coinGeckoURL)
            
        }
    }
}
