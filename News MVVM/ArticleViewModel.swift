//
//  ArticleViewModel.swift
//  News MVVM
//
//  Created by Adlet Zhantassov on 22.04.2023.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
    
    var title: String {
        return article.title ?? ""
    }
    
    var description: String {
        return article.description ?? ""
    }
}
