//
//  GithubRequset.swift
//  GithubApiApp
//
//  Created by 原田悠嗣 on 2020/01/03.
//  Copyright © 2020 原田悠嗣. All rights reserved.
//

import Foundation

protocol GithubRequset {
    var baseURL: URL { get }
    // パスはString型なのに注意
    var path: String { get }
}

extension GithubRequset {
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
}
