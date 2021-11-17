//
//  Coin.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import Foundation

struct CoinResponse: Decodable {
    let coins: [Coin]

    enum CodingKeys: String, CodingKey {
        case coins = "Data"
    }
}

struct Coin: Decodable {
    let name: String
    let price: Double
    let changePercent24Hour: Double
    

    enum RootKeys: String, CodingKey {
        case raw = "RAW"
    }
    
    enum SymbolKeys: String, CodingKey {
        case usd = "USD"
    }
    
    enum CodingKeys: String, CodingKey {
        case name = "FROMSYMBOL"
        case price = "PRICE"
        case changePercent24Hour = "CHANGEPCT24HOUR"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: RootKeys.self)
        let rawContainer = try container.nestedContainer(keyedBy: SymbolKeys.self, forKey: .raw)
        let coinContainer = try rawContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .usd)
        name = try coinContainer.decode(String.self, forKey: .name)
        price = try coinContainer.decode(Double.self, forKey: .price)
        changePercent24Hour = try coinContainer.decode(Double.self, forKey: .changePercent24Hour)
    }
    
}
//
//enum Symbol: String, CaseIterable {
//    case BTC
//    case ETH
//    case DASH
//    case LTC
//    case ETC
//    case XRP
//    case BCH
//    case XMR
//    case QTUM
//    case ZEC
//    case BTG
//}
