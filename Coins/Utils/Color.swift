//
//  Color.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/20.
//

import UIKit

enum Color {
    case postivie
    case negative

    var color: UIColor {
        switch self {
        case .postivie:
            return .systemGreen
        case .negative:
            return .systemRed
        }
    }
}
