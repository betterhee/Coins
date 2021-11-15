//
//  RequestType.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import Foundation

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

public typealias Headers = [String: String]
public typealias Parameters = [String: String]

public protocol RequestType {
    
    associatedtype ResponseType: Decodable

    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: Headers? { get }
    var parameters: Parameters? { get }
    
}

public extension RequestType {
    
    func makeRequest() -> URLRequest? {
        guard let url = url else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        request.allHTTPHeaderFields = headers
        return request
    }

    func parseResponse(data: Data)-> ResponseType? {
        do {
            let value = try JSONDecoder().decode(ResponseType.self, from: data)
            return value
        } catch {
            return nil
        }
    }
    
}

private extension RequestType {
    
    var url: URL? {
        guard var urlComponents = URLComponents(string: baseURL) else {
            return nil
        }
        urlComponents.path = urlComponents.path + path
        urlComponents.queryItems = queryItems
        return urlComponents.url
    }

    var queryItems: [URLQueryItem]? {
        guard method == .get, let parameters = parameters else {
            return nil
        }

        return parameters.map { URLQueryItem(name: $0.key, value: $0.value) }
    }
    
}
