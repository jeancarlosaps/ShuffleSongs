//
//  Service.swift
//  ShuffleSongs
//
//  Created by Jean Carlos on 11/12/19.
//  Copyright © 2019 Jean Carlos. All rights reserved.
//

import Foundation

protocol ServiceType {
    func request()
}

class Service: ServiceType {
    func request() {
        let urlString = String()
        if let url = URL(string: urlString) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let results = try JSONDecoder().decode(SongsResults.self, from: data)
                        print(results)
                    }
                    catch {
                        print("Error")
                    }
                }
            }.resume()
        }
    }
}
