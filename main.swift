//
//  main.swift
//  GithubApiApp
//
//  Created by 原田悠嗣 on 2020/01/05.
//  Copyright © 2020 原田悠嗣. All rights reserved.
//

import Foundation

print("Enter your query here> ", terminator: "")

// 入力された検索クエリの取得
guard var keyword = readLine(strippingNewline: true) else {
    exit(1)
}

keyword = "swift"

// APIクライアントの生成
let cliant = GithubCliant()

// リクエストの発行
let request = GithubAPI.SearchRepositories(keyword: keyword)

// リクエストの送信
cliant.send(request: request) { result in
    switch result {
    case let .success(response):
        for item in response.items {
            // リポジトリの所有者と名前を出力
            print(item.owner.login + "/" + item.name)
        }
        exit(0)
    case let .failure(error):
        // エラー詳細を出力
        print(error)
        exit(1)
    }

}

// タイムアウト時間
let timeoutInterval: TimeInterval = 60

// タイムアウトまでメインスレッドを停止
Thread.sleep(forTimeInterval: timeoutInterval)

// タイムアウト後の処理
print("Connection timeout")
exit(1)
