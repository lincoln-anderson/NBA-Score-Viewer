import SwiftUI

struct NBAScore: Codable, Identifiable{
    var id: Int
    var games: [GameList]
}

struct GameList: Codable, Identifiable {
    var id: UUID
    var vTeam: Team
    var hTeam: Team
    
}

struct Team: Codable, Identifiable {
    var id: UUID
    var shortName: String
    var score: PassedScore
}

struct PassedScore: Codable, Identifiable {
    var id: UUID
    var points: Int
}

struct NBAScoreCollection: Codable {
    var sample: [NBAScore]
}
