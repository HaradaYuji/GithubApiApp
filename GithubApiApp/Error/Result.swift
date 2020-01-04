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
    case failure(Error)

    init(value: T) {
        self = .success(value)
    }

    init(error: Error) {
        self = .failure(error)
    }
}
