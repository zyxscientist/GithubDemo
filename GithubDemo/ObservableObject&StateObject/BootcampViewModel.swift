//
//  BootcampViewModel.swift
//  GithubDemo
//
//  Created by 朱宇軒 on 2022/8/30.
//

import SwiftUI

struct BootcampViewModel: View {
    
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List { // 在SwiftUI里面，list 是一个复杂且功能强大的组件
                ForEach(fruitViewModel.fruitArray) { fruitArray in // ForEach看起来怪怪但就是如此的
                    HStack{
                        Text("\(fruitArray.count)")
                            .font(.system(size: 16, weight: .semibold, design: .rounded))
                            .foregroundColor(.blue)
                        Text(fruitArray.name)
                            .font(.system(size: 16, weight: .semibold, design: .rounded))
                    }
                }.onDelete(perform: fruitViewModel.deleteListItem)
            }
            .onAppear{fruitViewModel.getFruits()} // 渲染视图前先执行这里面的东西
            .navigationTitle(Text("Fruit List"))
        }
    }
    
}


struct BootcampViewModel_Previews: PreviewProvider {
    static var previews: some View {
        BootcampViewModel()
    }
}
