//
//  CoinRequest.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import Foundation

enum CoinRequest {
    case coins(limit: Int, to: String?)
}

extension CoinRequest: RequestType {
    
    typealias ResponseType = CoinResponse
    
    var baseURL: String {
        "https://min-api.cryptocompare.com"
    }
    
    var path: String {
        "/data/top/totalvolfull"
    }
    
    var method: HTTPMethod {
        .get
    }
    
    var headers: Headers? {
        nil
    }
    
    var parameters: Parameters? {
        switch self {
        case .coins(let limit, let to):
            return [
                "limit": String(limit),
                "tsym": to ?? "USD"
            ]
        }
    }
    
}
