//
//  ArticleRequestTests.swift
//  CoinsTests
//
//  Created by 홍다희 on 2021/11/21.
//

import XCTest
@testable import Coins

class ArticleRequestTests: XCTestCase {

    func testMakingURLRequest() throws {
        // given
        let request = ArticleRequest.articles(category: "BTC")

        // when
        let urlRequest = request.makeRequest()

        // then
        XCTAssertEqual(urlRequest?.url?.scheme, "https")
        XCTAssertEqual(urlRequest?.url?.host, "min-api.cryptocompare.com")
        XCTAssertEqual(urlRequest?.url?.path, "/data/v2/news")
        XCTAssertEqual(urlRequest?.url?.query, "categories=BTC")

    }

    func testParsingResponse() throws {
        // given
        let request = ArticleRequest.articles(category: "BTC")
        let jsonData = MockJSON.article

        // when
        let response = request.parseResponse(data: jsonData)

        // then
        XCTAssertEqual(response?.articles.count, 1)
        XCTAssertEqual(response?.articles[0].title, "Market Watch: BTC Eyes $60K, AVAX to Replace DOGE As Top 10?")
        XCTAssertEqual(response?.articles[0].url, "https://cryptopotato.com/market-watch-btc-eyes-60k-avax-to-replace-doge-as-top-10/")
        XCTAssertEqual(response?.articles[0].imageURL, "https://images.cryptocompare.com/news/default/cryptopotato.png")
    }

}
