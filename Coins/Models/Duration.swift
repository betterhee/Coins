//
//  Duration.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/17.
//

import Foundation

enum Duration: Int {
    case hour
    case day
    case week
}

extension Duration {
    var limit: Int {
        switch self {
        case .hour:
            return 60
        case .day:
            return 24
        case .week:
            return 7
        }
    }

    var dateFormat: String {
        switch self {
        case .hour:
            return "h:mm a"
        case .day:
            return "h a"
        case .week:
            return "E"
        }
    }
}
