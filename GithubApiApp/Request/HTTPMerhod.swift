//
//  HTTPMerhod.swift
//  GithubApiApp
//
//  Created by 原田悠嗣 on 2020/01/03.
//  Copyright © 2020 原田悠嗣. All rights reserved.
//

import Foundation

enum HTTPMethod : String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case head = "HEAD"
    case delete = "DELETE"
    case patch = "PATCH"
    case trace = "TRACE"
    case options = "OPTIONS"
    case connect = "CONNECT"
}
