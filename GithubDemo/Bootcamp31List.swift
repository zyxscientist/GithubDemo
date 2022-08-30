//
//  Bootcamp31List.swift
//  GithubDemo
//
//  Created by PeterZ on 2022/8/30.
//

import SwiftUI

struct Player: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var club: String
}

struct Bootcamp31List: View {
    
    var player: [Player] = [
        Player(name: "Jack Peter Grealish", club: "Manchester City Football Club"),
        Player(name: "Kevin De Bruyne", club: "Manchester City Football Club"),
        Player(name: "Phil Foden", club: "Manchester City Football Club"),
        Player(name: "Riyad Mahrez", club: "Manchester City Football Club"),
        Player(name: "Aymeric Laporte", club: "Manchester City Football Club")
        ]
    
    var body: some View {
        List {
                ForEach(player) { player in
                    VStack(alignment: .leading){
                        Text(player.name)
                            .font(.system(size: 16, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                        Text(player.club)
                            .font(.system(size: 13, weight: .regular, design: .rounded))
                            .foregroundColor(.gray)
                    }
                }
            }.listStyle(PlainListStyle())
        }
    }

struct Bootcamp31List_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp31List()
    }
}
