//
//  UIApplication.swift
//  CryptoTracker
//
//  Created by Kumar, Neeraj on 25/01/22.
//

import Foundation
import SwiftUI


extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
