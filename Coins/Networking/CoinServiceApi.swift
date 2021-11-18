//
//  ArticleService.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import Foundation

final class CoinServiceAPI {
    
    private let apiRequestLoader: APIRequestLoader

    init(apiRequestLoader: APIRequestLoader = APIRequestLoader()) {
        self.apiRequestLoader = apiRequestLoader
    }
    
    func articles(completion: @escaping (Result<[Article], Error>) -> Void) {
        let endpoint = ArticleRequest.articles
        apiRequestLoader.request(with: endpoint) { result in
            switch result {
            case .success(let value):
                completion(.success(value.articles))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func coins(completion: @escaping (Result<[Coin], Error>) -> Void) {
        let endpoint = CoinRequest.coins(limit: 20, to: nil)
        apiRequestLoader.request(with: endpoint) { result in
            switch result {
            case .success(let value):
                completion(.success(value.coins))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

    func historicalCoins(from: Coin, duration: Duration, completion: @escaping (Result<[HistoricalCoin], Error>) -> Void) {
        let endpoint = HistoricalCoinRequest.historicalCoin(from: from, to: nil, duration: duration)
        apiRequestLoader.request(with: endpoint) { result in
            switch result {
            case .success(let value):
                completion(.success(value.historicalCoins))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

}
