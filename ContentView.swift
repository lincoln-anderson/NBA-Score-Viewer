import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NBAScoreCardView(passedHomeTeam: "MIA", passedAwayTeam: "TOR", passedQuarter: "4TH:", passedHomeTeamScore: 98, passedAwayTeamScore: 102, passedTime: "8:47")
            NBAScoreCardView(passedHomeTeam: "LAL", passedAwayTeam: "GSW", passedQuarter: "4TH:", passedHomeTeamScore: 98, passedAwayTeamScore: 102, passedTime: "8:47")
        }
    }
}
