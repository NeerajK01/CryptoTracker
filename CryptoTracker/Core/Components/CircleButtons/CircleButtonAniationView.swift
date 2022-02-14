//
//  CircleButtonAniationView.swift
//  CryptoTracker
//
//  Created by Kumar, Neeraj on 17/01/22.
//

import SwiftUI

struct CircleButtonAniationView: View {
    @Binding var animate: Bool
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? Animation.easeOut(duration: 1.0) : .none)
            
        
    }
}

struct CircleButtonAniationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAniationView(animate: .constant(false))
            .foregroundColor(.red)
            .frame(width: 100, height: 100)
    }
}
