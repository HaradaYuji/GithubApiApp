//
//  GithubApiError.swift
//  GithubApiApp
//
//  Created by 原田悠嗣 on 2020/01/02.
//  Copyright © 2020 原田悠嗣. All rights reserved.
//

import Foundation

struct GithubApiError : Decodable, Error {

    struct FieldError: Decodable {
        let resource: String
        let field: String
        let code: String
    }
    let message: String
    let fieldError: [FieldError]
}
