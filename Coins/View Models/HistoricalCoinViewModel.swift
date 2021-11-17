//
//  CoinDetailViewModel.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/17.
//

import Foundation

final class HistoricalCoinViewModel {

    var didReceiveHistoricalCoin: (([HistoricalCoin]) -> Void)?

    private var coin: Coin
    private let service: CoinServiceApi
    private var historicalCoin: [HistoricalCoin] = [] {
        didSet {
            didReceiveHistoricalCoin?(self.historicalCoin)
        }
    }

    init(coin: Coin,
         service: CoinServiceApi = CoinServiceApi()) {
        self.coin = coin
        self.service = service
    }

    var selectedPeriod: Period = .day {
        didSet {
            fetchHistoricalCoin()
        }
    }

}

extension HistoricalCoinViewModel {

    func fetchHistoricalCoin() {
        service.historicalCoins(from: coin, period: selectedPeriod) { result in
            switch result {
            case .success(let value):
                self.historicalCoin = value
            case .failure:
                break
            }
        }
    }

    var title: String {
        coin.name
    }

}
