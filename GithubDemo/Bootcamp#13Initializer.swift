//
//  Bootcamp#13Initializer.swift
//  GithubDemo
//
//  Created by 朱宇軒 on 2022/8/28.
//

import SwiftUI

struct Bootcamp_13Initializer: View {
    
    var color: Color
    var count: Int
    var title: String
    
    enum Fruit {
        case apple
        case orange
    }
    
    init(count: Int, title: Fruit){
        
        self.count = count
        
        if title == .apple {
            self.title = "Apple"
            self.color = .red
        } else {
            self.title = "Orange"
            self.color = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .font(.system(size: 42, design:.rounded))
                .foregroundColor(.white)
                .bold()
                .underline()
            Text(title)
                .font(.system(size: 22, design:.rounded))
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150, alignment: .center)
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 30.0, style: .continuous))
    }
}

struct Bootcamp_13Initializer_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Bootcamp_13Initializer(count: 12, title: .apple)
            Bootcamp_13Initializer(count: 44, title: .orange)
        }
    }
}
