//
//  SearchResponse.swift
//  GithubApiApp
//
//  Created by 原田悠嗣 on 2020/01/02.
//  Copyright © 2020 原田悠嗣. All rights reserved.
//

import Foundation

struct SearchResponse<Item: Decodable> : Decodable {
    let totalCount: Int
    let items: [Item]

    enum CodingKeys : String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}
