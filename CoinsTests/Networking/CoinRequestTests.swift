//
//  CoinRequestTests.swift
//  CoinsTests
//
//  Created by 홍다희 on 2021/11/18.
//

import XCTest
@testable import Coins

class CoinRequestTests: XCTestCase {

    func testMakingURLRequest() throws {
        // given
        let request = CoinRequest.coins(limit: 10, to: nil)

        // when
        let urlRequest = request.makeRequest()

        // then
        XCTAssertEqual(urlRequest?.url?.scheme, "https")
        XCTAssertEqual(urlRequest?.url?.host, "min-api.cryptocompare.com")
        XCTAssertEqual(urlRequest?.url?.path, "/data/top/totalvolfull")
        XCTAssertEqual(urlRequest?.url?.query?.contains("limit=10"), true)
        XCTAssertEqual(urlRequest?.url?.query?.contains("tsym=USD"), true)
    }

    func testParsingResponse() throws {
        // given
        let request = CoinRequest.coins(limit: 1, to: nil)
        let jsonData = MockJSON.coin

        // when
        let response = request.parseResponse(data: jsonData)

        // then
        XCTAssertEqual(response?.coins.count, 1)
        XCTAssertEqual(response?.coins[0].name, "BTC")
        XCTAssertEqual(response?.coins[0].price, 59593.72)
        XCTAssertEqual(response?.coins[0].changePercent24Hour, -1.9684377484975333)
    }

}
