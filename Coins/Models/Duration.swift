//
//  Period.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/17.
//

import Foundation

enum Duration: Int {
    case day
    case week
}

extension Duration {
    var limit: Int {
        switch self {
        case .day:
            return 24
        case .week:
            return 7
        }
    }
}
