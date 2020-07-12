//
//  ContentView.swift
//  goodmove
//
//  Created by James Parker on 7/11/20.
//  Copyright © 2020 blackargyle. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            GameListView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Menu")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
