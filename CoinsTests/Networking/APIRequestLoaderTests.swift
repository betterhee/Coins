//
//  APILoaderTests.swift
//  CoinsTests
//
//  Created by 홍다희 on 2021/11/21.
//

import XCTest
@testable import Coins

class APIRequestLoaderTests: XCTestCase {

    var loader: APIRequestLoader!

    override func setUpWithError() throws {
        let configuration = URLSessionConfiguration.ephemeral
        configuration.protocolClasses = [MockURLProtocol.self]
        let urlSession = URLSession(configuration: configuration)
        loader = APIRequestLoader(urlSession: urlSession)
    }

    override func tearDownWithError() throws {
        loader = nil
    }

    func testLoaderSuccess() throws {
        // given
        let request = CoinRequest.coins(limit: 1, to: nil)
        let mockJSONData = MockJSON.coin
        let expectation = XCTestExpectation(description: "response")
        MockURLProtocol.requestHandler = { reqeust in
            return (HTTPURLResponse(), mockJSONData)
        }

        // when
        loader.request(with: request) { result in
            // then
            switch result {
            case .success(let response):
                XCTAssertEqual(response.coins.count, 1)
                XCTAssertEqual(response.coins[0].name, "BTC")
                XCTAssertEqual(response.coins[0].price, 59593.72)
                XCTAssertEqual(response.coins[0].changePercent24Hour, -1.9684377484975333)
                expectation.fulfill()
            default:
                break
            }
        }

        wait(for: [expectation], timeout: 1)
    }

}
