//
//  GameDetail.swift
//  goodmove
//
//  Created by James Parker on 7/12/20.
//  Copyright © 2020 blackargyle. All rights reserved.
//

import SwiftUI

struct GameDetail: View {
    let game: Game
    var body: some View {
        VStack {
            Image("bship").scaledToFit()
            VStack(alignment: .leading) {
                Text("Name: \(game.name)")
                Text("Category: \(game.category)")
                Text("Max Players: \(game.maxPlayers)")
            }
            Spacer()
        }.navigationBarTitle(Text(self.game.name), displayMode: .inline)
    }
}

struct GameDetail_Previews: PreviewProvider {
    static var previews: some View {
        GameDetail(game: Game.sampleGames[0])
    }
}
