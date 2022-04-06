//
//  File.swift
//  NBA Score Viewer
//
//  Created by lincoln anderson on 4/6/22.
//

import Foundation
import SwiftUI

struct NBAScoreCardView: View {
    
    @State var passedHomeTeam: String
    @State var passedAwayTeam: String
    @State var passedQuarter: String
    @State var passedHomeTeamScore: Int
    @State var passedAwayTeamScore: Int
    @State var passedTime: String
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack(spacing: 10){
            HStack{
            
                Text(passedAwayTeam)
                    .bold()
                
                Text("-")
                    .bold()
            
                Text(passedHomeTeam)
                    .bold()
                
            }
            
            HStack{
                Text(passedQuarter)
                    .bold()
                Text(passedTime)
                    .bold()
            }
            HStack{
                Text(String(passedAwayTeamScore))
                    .bold()
                Text("-")
                    .bold()
                Text(String(passedHomeTeamScore))
                    .bold()
            }
        }
        .padding()
        .background(Color.gray)
        .cornerRadius(15)
        
    }
}
