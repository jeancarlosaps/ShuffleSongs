//
//  Results.swift
//  ShuffleSongs
//
//  Created by Jean Carlos on 11/12/19.
//  Copyright © 2019 Jean Carlos. All rights reserved.
//

import Foundation

struct SongsResults: Codable {
    let primaryGenreName: String
    let artistName: String
    let id: Int
    let wrapperType: String
    let artistType: String
    let trackName: String
    let artworkUrl: String
    
    enum CodingKeys: String, CodingKey {
        case primaryGenreName = "primaryGenreName"
        case artistName = "artistName"
        case id = "id"
        case wrapperType = "wrapperType"
        case artistType = "artistType"
        case trackName = "trackName"
        case artworkUrl = "artworkUrl"
        
    }
}

struct SongsResultsResponse: Codable {
    let resultCount: Int
    let results: [SongsResults]
    
    enum CodingKeys: String, CodingKey {
        case resultCount = "resultCount"
        case results = "results"
    }
}
