//
//  Repository.swift
//  GithubApiApp
//
//  Created by 原田悠嗣 on 2020/01/02.
//  Copyright © 2020 原田悠嗣. All rights reserved.
//

import Foundation

struct Repository: Decodable {
    let id: Int
    let name: String
    let fullName: String
    let owner: Oganization

    enum CodingKeys : String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
    }
}
