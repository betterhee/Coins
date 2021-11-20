//
//  CoinDetailViewModel.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/17.
//

import Foundation

final class CoinDetailViewModel {
    
    var didReceiveHistoricalCoin: (([(time: TimeInterval, price: Double)], Int) -> Void)?
    var didReceiveArticles: (() -> Void)?
    var didSelectChartValue: ((String?) -> Void)?

    private let coin: Coin
    private let service: CoinServiceAPI
    private var articles: [Article] = [] {
        didSet {
            didReceiveArticles?()
        }
    }
    
    init(coin: Coin,
         service: CoinServiceAPI = CoinServiceAPI()) {
        self.coin = coin
        self.service = service
    }
    
}

extension CoinDetailViewModel {
    
    var title: String {
        coin.name
    }

    
    func selectDuration(at index: Int)  {
        DispatchQueue.global(qos: .userInitiated).async {
            let duration: Duration = Duration(rawValue: index) ?? .day
            self.fetchHistoricalCoins(duration: duration)
        }
    }
    
    func selectChartValue(_ value: Double) {
        didSelectChartValue?(CurrencyFormatter.string(from: value))
    }
    
    func fetchHistoricalCoins(duration: Duration) {
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

    func fetchArticles() {
        service.articlesFor(coin){ result in
            switch result {
            case .success(let articles):
                self.articles = articles
            case .failure(_):
                break
            }
        }
    }
    
}

extension CoinDetailViewModel {

    var numberOfRows: Int {
        return articles.count
    }

    func viewModelForCell(at index: Int) -> ArticleViewModel {
        return ArticleViewModel(article: articles[index])
    }

    func url(at index: Int) -> URL {
        let url = URL(string: articles[index].url)!
        return url
    }

}
