//
//  ArticleModel.swift
//  News MVVM
//
//  Created by Adlet Zhantassov on 21.04.2023.
//

import Foundation

struct ArticleList: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

struct Article: Codable {
    let source: Source
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?
    
}

struct Source: Codable {
    let id: String?
    let name: String?
}
