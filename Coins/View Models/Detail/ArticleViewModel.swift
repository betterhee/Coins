//
//  ArticleViewModel.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import Foundation

struct ArticleViewModel {

    private var article: Article
    
    init(article: Article) {
        self.article = article
    }
        
}

extension ArticleViewModel {
    
    var title: String {
        article.title
    }
    
    var date: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: Date(timeIntervalSince1970: article.date))
    }
    
    var thumbnailUrl: URL? {
        URL(string: article.imageURL)
    }
    
}
