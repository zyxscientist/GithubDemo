//
//  BootcampEnvironmentObject.swift
//  GithubDemo
//
//  Created by PeterZ on 2022/8/31.
//

import SwiftUI

struct DeviceType: Identifiable {
    var id: String = UUID().uuidString
    var name: String
}

struct BootcampEnvironmentObject: View {
    
    @State var device: [DeviceType] = [DeviceType(name: "iPhone"),DeviceType(name: "iPad"),DeviceType(name: "MacBook")]
    
    var body: some View {
        List{
            ForEach(device) { device in
                Text(device.name)
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
            }
        }
    }
}

struct BootcampEnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        BootcampEnvironmentObject()
    }
}
