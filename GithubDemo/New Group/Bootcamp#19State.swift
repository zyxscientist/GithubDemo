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
                
                VStack {
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
                    SoildButton(backgroundColor: $backgroundColor, title: $title, count: $count)
                }
                
            }.foregroundColor(.white)
        }
    }
}

struct SoildButton: View { // 子视图
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @Binding var count: Int
    
    var body: some View {
        Button(action: {
            backgroundColor = .black
            title = "Black"
            count = 0
        },
               label: {
            Text("Reset")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.teal)
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
        })
    }
    
}

struct Bootcamp_19_State_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp_19_State()
    }
}
