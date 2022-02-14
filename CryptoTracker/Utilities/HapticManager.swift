//
//  HapticManager.swift
//  CryptoTracker
//
//  Created by Kumar, Neeraj on 02/02/22.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
