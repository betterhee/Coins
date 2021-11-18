//
//  CoinsViewModel.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/16.
//

import Foundation

final class CoinsViewModel {

    typealias CoinsUpdatedAction = () -> Void
    
    private let service: CoinServiceAPI
    private let coinssUpdatedAction: CoinsUpdatedAction?
    
    private var coins: [Coin] = [] {
        didSet {
            coinssUpdatedAction?()
        }
    }
    
    init(service: CoinServiceAPI = CoinServiceAPI(),
         coinssUpdatedAction: @escaping CoinsUpdatedAction) {
        self.coinssUpdatedAction = coinssUpdatedAction
        self.service = service
        
        service.coins { result in
            switch result {
            case .success(let value):
                self.coins = value
            case .failure:
                self.coins = []
            }
        }
    }
    
}

extension CoinsViewModel {
    
    var numberOfRows: Int {
        return coins.count
    }
    
    func viewModelForCell(at index: Int) -> CoinViewModel {
        return CoinViewModel(coin: coins[index])
    }

    func viewModelForSelectedCell(at index: Int) -> HistoricalCoinViewModel {
        return HistoricalCoinViewModel(coin: coins[index])
    }

}
