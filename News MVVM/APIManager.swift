//
//  APIManager.swift
//  News MVVM
//
//  Created by Adlet Zhantassov on 21.04.2023.
//

import Foundation

struct Constants {
    static let baseURL = "https://newsapi.org/v2/"
    static let APIKey = "4e1fb1a5145c466b986d9be131ef901e"
}

class APIManager {
    
    static let shared = APIManager()
    
    init() {}
    
    func getTopHeadilines(completion: @escaping ([Article]) -> Void) {
        let url = URL(string: "\(Constants.baseURL)top-headlines?country=us&apiKey=\(Constants.APIKey)")
        guard let url = url else { return }
        URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let data = data {
                do {
                    let articles = try? JSONDecoder().decode(ArticleList.self, from: data).articles
                    if let articles = articles {
                        completion(articles)
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}
