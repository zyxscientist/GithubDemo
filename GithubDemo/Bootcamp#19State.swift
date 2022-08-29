//
//  SwiftUIView.swift
//  GithubDemo
//
//  Created by admin on 2022/8/29.
//

import SwiftUI

struct Bootcamp_19_State: View {
    
    @State var backgroundColor: Color = Color.black
    // @State 属性包装器 让视图关注这个变量的变化，当变化产生，要更新视图
    @State var title: String = "Black"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea(.all)
            
            VStack(spacing: 20){
                Text(title)
                    .font(.system(size: 42, design:.rounded))
                    .bold()
                Text("Count: \(count)")
                    .font(.system(size: 42, design:.rounded))
                    .bold()
                
                HStack(spacing: 20){
                    Button("Button 1") {
                        backgroundColor = .red
                        title = "Red"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        title = "Purple"
                        count += 1
                    }
                }
                
            }.foregroundColor(.white)
        }
    }
}

struct Bootcamp_19_State_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp_19_State()
    }
}
