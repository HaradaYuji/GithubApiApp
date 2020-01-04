//
//  GithubCliant.swift
//  GithubApiApp
//
//  Created by 原田悠嗣 on 2020/01/04.
//  Copyright © 2020 原田悠嗣. All rights reserved.
//

import Foundation

class GithubCliant {
    private let session: URLSession = {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        return session
    }()

    func send<Request: GithubRequset>(
        request: Request,
        completion: (Result<Request.Response, GithubCliantError>) ->
        Void) {
    }
}
