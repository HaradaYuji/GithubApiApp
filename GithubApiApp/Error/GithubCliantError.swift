//
//  GithubCliantError.swift
//  GithubApiApp
//
//  Created by 原田悠嗣 on 2020/01/02.
//  Copyright © 2020 原田悠嗣. All rights reserved.
//

import Foundation

enum GithubCliantError: Error {
    // 通信に失敗
    case connectionError(Error)
    // レスポンスの解釈に失敗
    case responseParseError(Error)
    // APIからエラーレスポンスを受け取った
    case apiError(GithubApiError)
}
