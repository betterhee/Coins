//
//  Article.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import Foundation

struct ArticleResponse: Decodable {
    
    let articles: [Article]
    
    enum CodingKeys: String, CodingKey {
        case articles = "Data"
    }
    
}

struct Article: Decodable {
    
    let title: String
    let url: String
    let date: TimeInterval
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case title
        case url
        case date = "published_on"
        case imageURL = "imageurl"
    }
    
}
