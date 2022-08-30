//
//  FruitModel.swift
//  GithubDemo
//
//  Created by 朱宇軒 on 2022/8/30.
//

import Foundation

struct FruitModel: Identifiable {
    var id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruitArray : [FruitModel] = [] /* 如果值有变化，Published 将发布出来 */
    
    func getFruits() {
            // 此函数不返回任何值，仅进行运算
            let fruit1 = FruitModel(name: "Banana", count: 22)
            let fruit2 = FruitModel(name: "Peach", count: 32)
            let fruit3 = FruitModel(name: "Melon", count: 42)
            
            fruitArray.append(fruit1)
            fruitArray.append(fruit2)
            fruitArray.append(fruit3)
        }
    
    func deleteListItem(index: IndexSet){
            fruitArray.remove(atOffsets: index)
        }
}
