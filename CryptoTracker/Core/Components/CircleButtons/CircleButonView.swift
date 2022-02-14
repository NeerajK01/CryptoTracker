//
//  CircleButonView.swift
//  CryptoTracker
//
//  Created by Kumar, Neeraj on 17/01/22.
//

import SwiftUI

struct CircleButonView: View {
    
    var iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            )
            .shadow(
                color: Color.theme.accent.opacity(0.25),
                radius: 10.0,
                x: 0.0,
                y: 0.0)
            .padding()
    }
}

struct CircleButonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButonView(iconName: "info")
            .padding()
            .previewLayout(.sizeThatFits)
        
        CircleButonView(iconName: "plus")
            .padding()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
