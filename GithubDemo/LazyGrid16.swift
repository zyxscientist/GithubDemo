//
//  LazyGrid16.swift
//  GithubDemo
//
//  Created by 朱宇軒 on 2022/9/6.
//

import SwiftUI

struct LazyGrid16: View {
    
    let gridItem: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil), // 代表一竖
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItem,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]){
                Section(header:
                            Text("Section 1")
                                .foregroundColor(.white)
                                .font(.system(.title, design: .rounded))
                                .fontWeight(.semibold)
                                .padding(.horizontal, 15)
                                .padding(.vertical, 5)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(.black)
                                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                                .padding(.horizontal, 15)
                            )
                    {
                    ForEach(0..<50) { item in
                        Rectangle()
                            .frame(height: 150)
                            .foregroundColor(.pink)
                    }
                }
            }
        }
    }
}

struct LazyGrid16_Previews: PreviewProvider {
    static var previews: some View {
        LazyGrid16()
    }
}
