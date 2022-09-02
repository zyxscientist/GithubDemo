//
//  NavigationView30.swift
//  GithubDemo
//
//  Created by 朱宇軒 on 2022/9/2.
//

import SwiftUI

struct NavigationView30: View {
    
    var backgroundColor: Color = .white
    
    init() {
        let navBarAppearance = UINavigationBarAppearance()
            navBarAppearance.configureWithOpaqueBackground()
            navBarAppearance.backgroundColor = UIColor(Color.blue)
        navBarAppearance.shadowColor = .clear // 去掉分割线
            UINavigationBar.appearance().standardAppearance = navBarAppearance
       }
    
    var body: some View {
        NavigationView {
            ZStack {
                
                backgroundColor
                    .ignoresSafeArea(.all)
                
                ScrollView {
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                        .font(.system(size: 42, weight: .semibold, design: .rounded))
                        Text("Hello, World!")
                            .foregroundColor(.black)
                        .font(.system(size: 42, weight: .semibold, design: .rounded))
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                        .font(.system(size: 42, weight: .semibold, design: .rounded))
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                        .font(.system(size: 42, weight: .semibold, design: .rounded))
                    }
                .navigationTitle("首页")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Text("左边元素")
                    }
                    
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Text("右边元素")
                    }
                }
            }
        }
    }
}

struct NavigationView30_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView30()
    }
}
