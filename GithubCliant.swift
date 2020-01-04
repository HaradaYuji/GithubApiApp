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
        completion: @escaping (Result<Request.Response, GithubCliantError>) ->
        Void) {
        let urlRequest = request.buildURLRequest()
        let task = session.dataTask(with: urlRequest) {
            data, response, error in

            switch (data, response, error) {
            case (_,_, let error?):
                completion(Result(error: .connectionError(error)))
            case (let data?, let response?, _):
                do {
                    let response = try request.response(from: data, urlResponse: response)
                    completion(Result(value: response))
                } catch let error as GithubApiError {
                    completion(Result(error: .apiError(error)))
                } catch {
                    completion(Result(error: .responseParseError(error)))
                }
            default:
                fatalError("invalid response combination\(data), \(response), \(error).")
            }
        }
        task.resume()
    }
}
