import SwiftUI

struct ContentView: View {
    let date: Date
        
    init() {
        date = Date()
        
        }
    var body: some View {
        let items = 1...12
        let columns = [
            GridItem(.adaptive(minimum: 130, maximum: 130))
            ]
        VStack{
            Text("NBA SCHEDULE FOR \(date, format: .dateTime.day().month())")
                .bold()
                .font(.title)
            ScrollView(.vertical) {
                LazyVGrid(columns: columns, alignment: .center) {
                    ForEach(items, id: \.self) { item in
                        NBAScoreCardView(passedHomeTeam: "MIA", passedAwayTeam: "TOR", passedQuarter: "4TH:", passedHomeTeamScore: 98, passedAwayTeamScore: 102, passedTime: "8:47")
                        }
                    }
            }
        }
    }
}
