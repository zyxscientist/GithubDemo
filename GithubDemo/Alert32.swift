//
//  Alert32.swift
//  GithubDemo
//
//  Created by 朱宇軒 on 2022/9/5.
//

import SwiftUI

struct Device {
    let name: String
    let count: Int
}

struct ErrorInfo: LocalizedError {
    var errorDescription: String?
    var failureReason: String?
    var recoverySuggestion: String?
    var helpAnchor: String?
}

struct Alert32: View {
    
    @State var showAlert: Bool = false
    
//    @State var device: Device?
    @State var error: ErrorInfo?
    
    
    var body: some View {
        HStack {
            Button {
                showAlert = true
                error = ErrorInfo(
                    errorDescription: "Error Description",
                    failureReason: "Failure Reason 1",
                    recoverySuggestion: "Try Again",
                    helpAnchor: "Help Anchor"
                    )
//                device = Device(name: "iPhone", count: 2)
            } label: {
                Text("Error 1")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .frame(width: 180)
                    .padding(.vertical)
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
            }
            
            Button {
                showAlert = true
                error = ErrorInfo(
                    errorDescription: "Error Description",
                    failureReason: "Failure Reason 2",
                    recoverySuggestion: "Try Again",
                    helpAnchor: "Help Anchor"
                    )
//                device = Device(name: "Macbook", count: 1)
            } label: {
                Text("Error 2")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .frame(width: 180)
                    .padding(.vertical)
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
            }
        }
//        .alert(Text("Device Info"), isPresented: $showAlert, presenting:device, actions: {device in
//                Button("OK", action: {})
//        }, message:{device in Text("We have \(device.count) \(device.name) now")})
        .alert(isPresented: $showAlert, error: error,
               actions:{ error in
                Button(error.recoverySuggestion ?? "OK", action: {})
                        }
               ,message: { error in
                    Text(error.failureReason ?? "nil")
            }
        )
    }
}

struct Alert32_Previews: PreviewProvider {
    static var previews: some View {
        Alert32()
    }
}
