//
//  ArticlesViewModel.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import Foundation

final class ArticlesViewModel {

    typealias ArticlesUpdatedAction = () -> Void
    
    private let service: CoinServiceApi
    private let articlesUpdatedAction: ArticlesUpdatedAction?
    
    private var articles: [Article] = [] {
        didSet {
            articlesUpdatedAction?()
        }
    }
    
    init(service: CoinServiceApi = CoinServiceApi(),
         articlesUpdatedAction: @escaping ArticlesUpdatedAction) {
        self.articlesUpdatedAction = articlesUpdatedAction
        self.service = service
        
        service.articles { result in
            switch result {
            case .success(let value):
                self.articles = value
            case .failure:
                self.articles = []
            }
        }
    }
    
}

extension ArticlesViewModel {
    
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
