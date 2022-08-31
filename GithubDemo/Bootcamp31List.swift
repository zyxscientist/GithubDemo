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
    
    @State var player: [Player] = [
        Player(name: "Jack Peter Grealish", club: "Manchester City Football Club"),
        Player(name: "Kevin De Bruyne", club: "Manchester City Football Club"),
        Player(name: "Phil Foden", club: "Manchester City Football Club"),
        Player(name: "Riyad Mahrez", club: "Manchester City Football Club"),
        Player(name: "Aymeric Laporte", club: "Manchester City Football Club")
        ]
    
    var body: some View {
        NavigationView {
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
                    .onMove(perform: { fromIndex, toIndex in
                        moveItem(fromIndex: fromIndex, toIndex: toIndex)
                    })
                    .onDelete { indexSet in
                        delete(indexSet: indexSet)
                        
                }
            }.toolbar{
                ToolbarItemGroup(placement: .navigationBarLeading){
                    EditButton()
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    // MARK: ADD BTN
                }
            }
                .navigationTitle("MFC")
                .listStyle(DefaultListStyle())
            }
        }
    
        func delete(indexSet: IndexSet){
            player.remove(atOffsets: indexSet)
        }
    
        func moveItem(fromIndex: IndexSet, toIndex: Int){
                player.move(fromOffsets: fromIndex, toOffset: toIndex)
        }
    }


struct Bootcamp31List_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp31List()
    }
}
