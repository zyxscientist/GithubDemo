//
//  Sheet28.swift
//  GithubDemo
//
//  Created by 朱宇軒 on 2022/9/3.
//

import SwiftUI

struct Sheet28: View {
    
    @State var showSheet:Bool = false
    
    var body: some View {
        ZStack{
            Color.pink
                .ignoresSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Show Sheet")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .frame(width: 180)
                    .padding(.vertical)
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
            }
        }.sheet(isPresented: $showSheet) {
            SheetView()
            // keep it one sheet per view :-)
        }
    }
}

struct SheetView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
                //SwiftUI提供的Sheet自带下滑手势退出操作
            } label: {
                Text("Close Sheet")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .frame(width: 180)
                    .padding(.vertical)
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
            }
        }
    }
}

struct Sheet28_Previews: PreviewProvider {
    static var previews: some View {
        Sheet28()
    }
}
