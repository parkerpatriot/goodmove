//
//  Game.swift
//  goodmove
//
//  Created by James Parker on 7/11/20.
//  Copyright © 2020 blackargyle. All rights reserved.
//

import Foundation
import SwiftUI

struct Games: Decodable {
    let game: Game
    
    init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        game = try container.decode(Game.self)
    }
}

struct Game: Codable, Equatable, Identifiable {
    var id: String {return self.name}
    var category: String
    var genre: String
    var image: String
    var maxPlayers: String
    var maxTime: String
    var mechanics: String
    var minAge: String
    var minPlayers: String
    var minTime: String
    var name: String
    var publisher: String
    
    #if DEBUG
    static let sampleGames = [
        Game(
            category: "None",
            genre: "Thematic",
            image: "",
            maxPlayers: "2",
            maxTime: "90",
            mechanics: "None",
            minAge: "12",
            minPlayers: "2",
            minTime: "90",
            name: "1960: The Making of the President",
            publisher: "Z-Man Games"
        ),
        Game(
            category: "None",
            genre: "Thematic",
            image: "",
            maxPlayers: "2",
            maxTime: "90",
            mechanics: "None",
            minAge: "12",
            minPlayers: "2",
            minTime: "90",
            name: "BattleShip",
            publisher: "Z-Man Games"
        )
    ]
    #endif
    
}
