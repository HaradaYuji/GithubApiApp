//
//  GithubAPI.swift
//  GithubApiApp
//
//  Created by 原田悠嗣 on 2020/01/04.
//  Copyright © 2020 原田悠嗣. All rights reserved.
//

import Foundation

final class GithubAPI {
    struct SearchRepositories: GithubRequset {

        let keyword: String

        // GithubRequestが要求する連装型
        typealias Response = SearchResponse<Repository>

        var method: HTTPMethod {
            return .get
        }

        var path: String {
            return "/search/repositories"
        }

        var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
    }

    struct SearchUsers: GithubRequset {

        let keyword: String

        // GithubRequestが要求する連装型
        typealias Response = SearchResponse<Oganization>

        var method: HTTPMethod {
            return .get
        }

        var path: String {
            // Fixme Organizationかも
            return "/search/users"
        }

        var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }

    }
}
