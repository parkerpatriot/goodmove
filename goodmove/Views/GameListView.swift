//
//  GameListView.swift
//  goodmove
//
//  Created by James Parker on 7/11/20.
//  Copyright © 2020 blackargyle. All rights reserved.
//

import SwiftUI

struct GameListView: View {
    let games: [Game] = Game.sampleGames
    @State private var search: String = ""
    var filteredGames: [Game] { return self.games.filter( {return search.isEmpty ? true : $0.name.lowercased().contains(self.search.lowercased())} ) }

    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $search)
                List {
                    ForEach(filteredGames) { game in
                        NavigationLink(destination: GameDetail(game: game)) {
                            Text(game.name)
                        }
                    }
                }.navigationBarTitle("Games")
                    .listStyle(GroupedListStyle())
            }
        }
    }
}

struct GameListView_Previews: PreviewProvider {
    static var previews: some View {
        GameListView()
    }
}
