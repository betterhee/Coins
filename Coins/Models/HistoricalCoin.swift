//
//  HistoricalCoin.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/17.
//

import Foundation

struct HistoricalCoinResponse: Decodable {
    let historicalCoins: [HistoricalCoin]

    enum CodingKeys: String, CodingKey {
        case historicalCoins = "Data"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let nestedContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .historicalCoins)
        historicalCoins = try nestedContainer.decode([HistoricalCoin].self, forKey: .historicalCoins)
    }

}

struct HistoricalCoin: Decodable {
    let time: TimeInterval
    let price: Double

    enum CodingKeys: String, CodingKey {
        case time
        case price = "close"
    }
}
