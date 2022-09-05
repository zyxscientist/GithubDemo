//
//  ContextMenu.swift
//  GithubDemo
//
//  Created by 朱宇軒 on 2022/9/5.
//

import SwiftUI

struct ContextMenu: View {
    
    @State var backgroundColor: Color = Color.yellow
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Image(systemName: "tray.fill")
                .font(.title)
            Text("Watchlist")
                .font(.system(.headline, design: .rounded))
            Text("Stock you follow")
                .font(.system(.subheadline, design: .rounded))
        }
        .padding()
        .foregroundColor(.white)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 22.0, style: .continuous))
        .contextMenu {
            Section(header: Text("MFC")){
                Button {
                    backgroundColor = .green
                } label: {
                    Label("Change BG Color", systemImage: "flame.fill")
                }
            }
            Button {
                backgroundColor = .green
            } label: {
                Label("Change BG Color", systemImage: "flame.fill")
            }
            Button {
                // 动作
            } label: {
                Label("Btn2", systemImage: "flame.fill")
            }
            Button {
                // 动作
            } label: {
                Label("Btn3", systemImage: "flame.fill")
            }
        }
    }
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
