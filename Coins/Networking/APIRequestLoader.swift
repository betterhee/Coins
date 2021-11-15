//
//  APIRequestLoader.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import Foundation

public enum APIError: Error {
    case invalidURL
    case client
    case server(statusCode: Int, data: Data?)
    case parseResponse
}

public final class APIRequestLoader {
    private let urlSession: URLSession

    init(urlSession: URLSession = .shared) {
        self.urlSession = urlSession
    }

    public func request<T, U>(with endpoint: T, completion: @escaping (Result<U, Error>) -> Void) where T: RequestType, T.ResponseType == U {
        guard let urlRequest = endpoint.makeRequest() else {
            completion(.failure(APIError.invalidURL))
            return
        }

        let task = urlSession.dataTask(with: urlRequest) { data, response, error in
            if error != nil {
                completion(.failure(APIError.client))
                return
            }
            if let httpResponse = response as? HTTPURLResponse,
               !(200...299).contains(httpResponse.statusCode) {
                completion(.failure(APIError.server(statusCode: httpResponse.statusCode, data: data)))
                return
            }
            if let data = data {
                guard let value = endpoint.parseResponse(data: data) else {
                    completion(.failure(APIError.parseResponse))
                    return
                }
                completion(.success(value))
            }
        }
        task.resume()
    }
}
