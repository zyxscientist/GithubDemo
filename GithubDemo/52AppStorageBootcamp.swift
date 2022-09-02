//
//  52AppStorageBootcamp.swift
//  GithubDemo
//
//  Created by 朱宇軒 on 2022/9/2.
//

import SwiftUI

struct _2AppStorageBootcamp: View {
    
    @AppStorage("name") var username: String?
    // username变量现在以"name"作为key存在了app里面
    
    var body: some View {
        VStack(spacing: 20) {
            Text(username ?? "user id: ***7897")
            Button {
                username = "Peter"
            } label: {
                Text("Save")
                    .foregroundColor(.blue)
            }
        }
    }
}

struct _2AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        _2AppStorageBootcamp()
    }
}
