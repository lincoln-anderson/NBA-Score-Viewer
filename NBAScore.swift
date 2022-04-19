import Foundation

// MARK: - Games
struct Games: Codable {
    let gamesGet: String
    let parameters: Parameters
    let results: Int
    let response: [Response]

    enum CodingKeys: String, CodingKey {
        case gamesGet = "get"
        case parameters, results, response
    }
}

// MARK: - Parameters
struct Parameters: Codable {
    let date: String
}

// MARK: - Response
struct Response: Codable {
    let id, season: Int
    let status: Status
    let periods: Periods
    let arena: Arena
    let teams: Teams
    let scores: Scores
}

// MARK: - Arena
struct Arena: Codable {
    let city: String
}

// MARK: - Periods
struct Periods: Codable {
    let current, total: Int
    let endOfPeriod: Bool
}

// MARK: - Scores
struct Scores: Codable {
    let visitors, home: ScoresHome
}

// MARK: - ScoresHome
struct ScoresHome: Codable {
    let linescore: [String]
    let points: Int
}

// MARK: - Status
struct Status: Codable {
    let clock: JSONNull?
    let halftime: Bool
    let long: String
}

// MARK: - Teams
struct Teams: Codable {
    let visitors, home: TeamsHome
}

// MARK: - TeamsHome
struct TeamsHome: Codable {
    let id: Int
    let code: String
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
