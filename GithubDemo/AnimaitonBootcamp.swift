//
//  AnimaitonBootcamp.swift
//  GithubDemo
//
//  Created by 朱宇軒 on 2022/9/2.
//

import SwiftUI

struct AnimaitonBootcamp: View {
    
    @State var toggle: Bool = false
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 20){
                
                Button {
                    withAnimation(.spring(response: 0.4, dampingFraction: 1, blendDuration: 0.8)) {
                        showSheet.toggle()
                    }
                } label: {
                    Text("Show Sheet")
                        .font(.system(size: 22, weight: .bold, design: .rounded))
                        .frame(width: 180)
                        .padding(.vertical)
                        .background(.blue)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
                }
                
                RoundedRectangle(cornerRadius: 34, style: .continuous)
                    .frame(width: 200, height: 200)
                    .foregroundColor(toggle ? Color.red : Color.yellow)
                
                Button {
                    withAnimation(Animation.easeIn.delay(0.2)) {
                        toggle.toggle()
                    }
                } label: {
                    Text("Change Color")
                        .font(.system(size: 22, weight: .bold, design: .rounded))
                        .frame(width: 180)
                        .padding(.vertical)
                        .background(.blue)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
                }
                Spacer()
            }
            
            
            if showSheet {
                    RoundedRectangle(cornerRadius: 33, style: .continuous)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        .transition(.move(edge: .bottom))
                        .foregroundColor(.pink)
            }
            
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct AnimaitonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimaitonBootcamp()
    }
}
