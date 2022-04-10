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
                    .font(.title)
                
                Text("-")
                    .bold()
                    .font(.title)
            
                Text(passedHomeTeam)
                    .bold()
                    .font(.title)
                
            }
            
            HStack{
                Text(passedQuarter)
                    .bold()
                    .font(.title)
                Text(passedTime)
                    .bold()
                    .font(.title)
            }
            HStack{
                Text(String(passedAwayTeamScore))
                    .bold()
                    .font(.title)
                Text("-")
                    .bold()
                    .font(.title)
                Text(String(passedHomeTeamScore))
                    .bold()
                    .font(.title)
            }
        }
        .padding()
        .background(Color.gray)
        .cornerRadius(15)
        
    }
}
