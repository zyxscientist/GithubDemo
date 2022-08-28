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
        VStack {
            Text("This is a change")
                .padding()
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                // no action by now
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
