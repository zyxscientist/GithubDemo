//
//  TextEditor36.swift
//  GithubDemo
//
//  Created by 朱宇軒 on 2022/9/6.
//

import SwiftUI

struct TextEditor36: View {
    
    @State var textInput: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textInput)
                    .disableAutocorrection(true)
                    .foregroundColor(.black)
                    .colorMultiply(Color("--color-fill-secondary")) // 要用这个来改变背景色
                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                    .padding()
                Button {
                   // }
                } label: {
                    Text("Save")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .frame(width: 180)
                        .padding(.vertical)
                        .background(.blue)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                }
                
            }.navigationTitle("TextEdior")
        }
    }
}

struct TextEditor36_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor36()
    }
}
