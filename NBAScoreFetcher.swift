//
//  File.swift
//  NBA-Score-Viewer
//
//  Created by lincoln anderson on 4/13/22.
//

import Foundation
import SwiftUI

@MainActor
class NBAScoreFetcher: ObservableObject {
    @Published var scoreData = NBAScoreCollection(sample: [NBAScore.defaultScore])
    @Published var currentNBAScore = NBAScore.defaultScore
    
    let urlString = "https://api-nba-v1.p.rapidapi.com/games/live/"
    
    enum FetchError: Error {
        case badRequest
        case badJSON
    }
    
    @available(iOS 15.0, *)
     func fetchData() async
     throws  {
        guard let url = URL(string: urlString) else { return }

        let (data, response) = try await URLSession.shared.data(for: URLRequest(url: url))
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw FetchError.badRequest }

        scoreData = try JSONDecoder().decode(NBAScoreCollection.self, from: data)
         
        print(data)
    }
    
}
