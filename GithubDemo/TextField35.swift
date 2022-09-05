//
//  TextField35.swift
//  GithubDemo
//
//  Created by 朱宇軒 on 2022/9/5.
//

import SwiftUI

struct TextField35: View {
    
    @State var accountNumber: String = ""
    @State var inputTextArray:[String] = []
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            TextField("Input Something", text: $accountNumber)
                // .textFieldStyle(.roundedBorder)
                .padding()
                .background(Color.gray.opacity(0.1))
                .font(.headline)
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            .padding()
        
            Button {
                if inputTextCheck() { saveInputText() }
            } label: {
                Text("Save")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .frame(width: 180)
                    .padding(.vertical)
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            }
    
            ForEach(inputTextArray, id: \.self) { item in
                    Text(item)
            }
            
            Spacer()
        }
    }
    
    func inputTextCheck() -> Bool {
        // 检查合法性
        if accountNumber.count > 3{
            return true
        } else {
            return false
        }
    }
    
    func saveInputText() {
        if accountNumber != "" {
            inputTextArray.append(accountNumber)
            accountNumber = "" // 恢复到默认态
        }
    }
}

struct TextField35_Previews: PreviewProvider {
    static var previews: some View {
        TextField35()
    }
}
