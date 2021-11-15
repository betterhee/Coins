//
//  ArticleService.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import Foundation

final class ArticleService {
    
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
    
}
