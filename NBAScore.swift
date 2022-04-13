import SwiftUI

struct NBAScore: Codable {
    var HomeTeam: String
    var HomeScore: Int
    var AwayTeam: String
    var AwayScore: Int
    
    static let defaultScore = NBAScore(HomeTeam: "MIA", HomeScore: 100, AwayTeam: "GSW", AwayScore: 102)
}

struct NBAScoreCollection: Codable {
    var sample: [NBAScore]
}
