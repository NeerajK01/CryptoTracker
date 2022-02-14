//
//  String.swift
//  CryptoTracker
//
//  Created by Kumar, Neeraj on 08/02/22.
//

import Foundation

extension String {
    
    var removingHTMLOccurance: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
