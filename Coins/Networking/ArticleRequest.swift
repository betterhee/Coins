//
//  ArticleRequest.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import Foundation

enum ArticleRequest {
    case articles
}

extension ArticleRequest: RequestType {
    
    typealias ResponseType = ArticleResponse

    var baseURL: String {
        "https://min-api.cryptocompare.com"
    }

    var path: String {
        "/data/v2/news/"
    }

    var method: HTTPMethod {
        .get
    }
    
    var headers: Headers? {
        nil
    }
    
    var parameters: Parameters? {
        nil
    }
    
}

