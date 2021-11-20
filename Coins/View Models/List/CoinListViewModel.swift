//
//  CoinsViewModel.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/16.
//

import Foundation

final class CoinListViewModel {

    private let service: CoinServiceAPI
    private let didReceiveCoins: (() -> Void)?

    private var coins: [Coin] = [] {
        didSet {
            didReceiveCoins?()
        }
    }
    
    init(service: CoinServiceAPI = CoinServiceAPI(),
         didReceiveCoins: @escaping (() -> Void)) {
        self.didReceiveCoins = didReceiveCoins
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

extension CoinListViewModel {
    
    var numberOfRows: Int {
        return coins.count
    }
    
    func viewModelForCell(at index: Int) -> CoinCellViewModel {
        return CoinCellViewModel(coin: coins[index])
    }

    func viewModelForSelectedCell(at index: Int) -> CoinDetailViewModel {
        return CoinDetailViewModel(coin: coins[index])
    }

}
