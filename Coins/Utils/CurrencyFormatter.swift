//
//  CurrencyFormatter.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/18.
//

import Foundation

struct CurrencyFormatter {

    private static var currecyFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "en_US")
        formatter.maximumFractionDigits = 10
        return formatter
    }()

    static func string(from: Double) -> String? {
        return currecyFormatter.string(from: from as NSNumber)
    }

}
