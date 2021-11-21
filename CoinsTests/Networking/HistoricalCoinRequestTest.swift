//
//  HistoricalCoinRequestTest.swift
//  CoinsTests
//
//  Created by 홍다희 on 2021/11/21.
//

import XCTest
@testable import Coins

class HistoricalCoinRequestTest: XCTestCase {

    // MARK: - testMakingURLRequest

    func testMakingURLRequest_hour() throws {
        // given
        let request = HistoricalCoinRequest.historicalCoin(from: "BTC", to: nil, duration: .hour)
        // when
        let urlRequest = request.makeRequest()

        // then
        XCTAssertEqual(urlRequest?.url?.scheme, "https")
        XCTAssertEqual(urlRequest?.url?.host, "min-api.cryptocompare.com")
        XCTAssertEqual(urlRequest?.url?.path, "/data/v2/histominute")
        XCTAssertEqual(urlRequest?.url?.query?.contains("fsym=BTC"), true)
        XCTAssertEqual(urlRequest?.url?.query?.contains("tsym=USD"), true)
        XCTAssertEqual(urlRequest?.url?.query?.contains("limit=60"), true)
    }

    func testMakingURLRequest_day() throws {
        // given
        let request = HistoricalCoinRequest.historicalCoin(from: "BTC", to: nil, duration: .day)
        // when
        let urlRequest = request.makeRequest()

        // then
        XCTAssertEqual(urlRequest?.url?.scheme, "https")
        XCTAssertEqual(urlRequest?.url?.host, "min-api.cryptocompare.com")
        XCTAssertEqual(urlRequest?.url?.path, "/data/v2/histohour")
        XCTAssertEqual(urlRequest?.url?.query?.contains("fsym=BTC"), true)
        XCTAssertEqual(urlRequest?.url?.query?.contains("tsym=USD"), true)
        XCTAssertEqual(urlRequest?.url?.query?.contains("limit=24"), true)
    }

    func testMakingURLRequest_week() throws {
        // given
        let request = HistoricalCoinRequest.historicalCoin(from: "BTC", to: nil, duration: .week)
        // when
        let urlRequest = request.makeRequest()

        // then
        XCTAssertEqual(urlRequest?.url?.scheme, "https")
        XCTAssertEqual(urlRequest?.url?.host, "min-api.cryptocompare.com")
        XCTAssertEqual(urlRequest?.url?.path, "/data/v2/histoday")
        XCTAssertEqual(urlRequest?.url?.query?.contains("fsym=BTC"), true)
        XCTAssertEqual(urlRequest?.url?.query?.contains("tsym=USD"), true)
        XCTAssertEqual(urlRequest?.url?.query?.contains("limit=7"), true)
    }

    // MARK: - testParsingResponse

    func testParsingResponse_hour() throws {
        // given
        let request = HistoricalCoinRequest.historicalCoin(from: "BTC", to: nil, duration: .hour)
        let jsonData = MockJSON.HistoricalCoin.hour

        // when
        let response = request.parseResponse(data: jsonData)

        // then
        XCTAssertEqual(response?.historicalCoins.count, 60 + 1)
        XCTAssertEqual(response?.historicalCoins[0].time, 1637494680)
        XCTAssertEqual(response?.historicalCoins[0].price, 58852.76)
    }

    func testParsingResponse_day() throws {
        // given
        let request = HistoricalCoinRequest.historicalCoin(from: "BTC", to: nil, duration: .day)
        let jsonData = MockJSON.HistoricalCoin.day

        // when
        let response = request.parseResponse(data: jsonData)

        // then
        XCTAssertEqual(response?.historicalCoins.count, 24 + 1)
        XCTAssertEqual(response?.historicalCoins[0].time, 1637409600)
        XCTAssertEqual(response?.historicalCoins[0].price, 58633.2)
    }

    func testParsingResponse_week() throws {
        // given
        let request = HistoricalCoinRequest.historicalCoin(from: "BTC", to: nil, duration: .week)
        let jsonData = MockJSON.HistoricalCoin.week

        // when
        let response = request.parseResponse(data: jsonData)

        // then
        XCTAssertEqual(response?.historicalCoins.count, 7 + 1)
        XCTAssertEqual(response?.historicalCoins[0].time, 1636848000)
        XCTAssertEqual(response?.historicalCoins[0].price, 65509.06)
    }

}
