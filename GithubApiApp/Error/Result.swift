//
//  Result.swift
//  GithubApiApp
//
//  Created by 原田悠嗣 on 2020/01/04.
//  Copyright © 2020 原田悠嗣. All rights reserved.
//

import Foundation

enum Result<T, Error: Swift.Error> {
    case success(T)
    case failre(Error)

    init(value: T) {
        self = .success(value)
    }

    init(error: Error) {
        self = .failre(error)
    }
}
