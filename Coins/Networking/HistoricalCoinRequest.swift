//
//  HistoricalCoinRequest.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/17.
//

import Foundation

enum HistoricalCoinRequest {
    case historicalCoin(from: Coin, to: String?, period: Period)
}

extension HistoricalCoinRequest: RequestType {

    typealias ResponseType = HistoricalCoinResponse

    var baseURL: String {
        "https://min-api.cryptocompare.com"
    }

    var path: String {
        switch self {
        case .historicalCoin(_, _, let period) where period == .day:
            return "/data/v2/histohour"
        case .historicalCoin(_, _, let period) where period == .week:
            return "/data/v2/histoday"
        default:
            fatalError()
        }
    }

    var method: HTTPMethod {
        .get
    }

    var headers: Headers? {
        nil
    }

    var parameters: Parameters? {
        switch self {
        case .historicalCoin(let from, let to, let period):
            return [
                "fsym": from.name,
                "tsym": to ?? "USD",
                "limit": "\(period.limit)"
            ]
        }
    }

}
