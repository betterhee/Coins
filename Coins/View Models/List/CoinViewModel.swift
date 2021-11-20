//
//  CoinViewModel.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/16.
//

import Foundation

struct CoinViewModel {
    
    private var coin: Coin
    
    init(coin: Coin) {
        self.coin = coin
    }
    
}

extension CoinViewModel {
    
    var name: String {
        coin.name
    }
    
    var price: String? {
        CurrencyFormatter.string(from: coin.price)
    }
    
    var changePercent: String {
        let percent = coin.changePercent24Hour as NSNumber
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        return formatter.string(from: percent)!
    }

    var changePercentTextColor: Color {
        return coin.changePercent24Hour < 0 ? .negative : .postivie
    }
    
}
