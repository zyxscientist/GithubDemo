//
//  ContentView.swift
//  GithubDemo
//
//  Created by PeterZ on 2022/8/28.
//

import SwiftUI

// MARK: 等下转移到MBP2021去操作，这里太卡了

struct MainView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack {
                Text("This is a change")
                    .padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Text("This line added from the laptop")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
