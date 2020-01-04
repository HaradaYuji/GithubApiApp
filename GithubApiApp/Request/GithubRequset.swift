//
//  GithubRequset.swift
//  GithubApiApp
//
//  Created by 原田悠嗣 on 2020/01/03.
//  Copyright © 2020 原田悠嗣. All rights reserved.
//

import Foundation

protocol GithubRequset {
    associatedtype Response: Decodable


    var baseURL: URL { get }
    // パスはString型なのに注意
    var path: String { get }
    var method: HTTPMethod { get }
    var queryItems: [URLQueryItem] { get }
}

extension GithubRequset {
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }

    func buildURLRequest() -> URLRequest {
        let url = baseURL.appendingPathComponent(path)
        var components = URLComponents(
            url: url, resolvingAgainstBaseURL: true)

        switch method {
        case .get:
            components?.queryItems = queryItems
        default:
            fatalError("Unsupported method \(method)")
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.url = components?.url
        urlRequest.httpMethod = method.rawValue

        return urlRequest
    }
}
