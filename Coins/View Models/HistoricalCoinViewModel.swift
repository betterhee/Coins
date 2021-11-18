//
//  CoinDetailViewModel.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/17.
//

import Foundation

final class HistoricalCoinViewModel {
    
    var didReceiveHistoricalCoin: (([(time: TimeInterval, price: Double)], Int) -> Void)?
    var didSelectChartValue: ((String?) -> Void)?
    
    private let coin: Coin
    private let service: CoinServiceAPI
    
    init(coin: Coin,
         service: CoinServiceAPI = CoinServiceAPI()) {
        self.coin = coin
        self.service = service
    }
    
}

extension HistoricalCoinViewModel {
    
    var title: String {
        coin.name
    }
    
    func selectDuration(at index: Int)  {
        DispatchQueue.global(qos: .userInitiated).async {
            let duration: Duration = Duration(rawValue: index) ?? .day
            self.fetchHistoricalCoin(duration: duration)
        }
    }
    
    func selectChartValue(_ value: Double) {
        didSelectChartValue?(CurrencyFormatter.string(from: value))
    }
    
    func fetchHistoricalCoin(duration: Duration) {
        service.historicalCoins(from: coin, duration: duration) { result in
            switch result {
            case .success(let value):
                let duration = duration.rawValue
                let chartData = value.map { ($0.time, $0.price) }
                DispatchQueue.main.async {
                    self.didReceiveHistoricalCoin?(chartData, duration)
                }
            case .failure:
                break
            }
        }
    }
    
}
