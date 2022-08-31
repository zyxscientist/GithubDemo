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

class DeviceViewModel:ObservableObject {
    
    @Published var deviceViewModel: [DeviceType] = []
    
    init(){
        deviceViewModel.append(contentsOf: [DeviceType(name: "iPhone")])
        deviceViewModel.append(contentsOf: [DeviceType(name: "Mac")])
        deviceViewModel.append(contentsOf: [DeviceType(name: "Airpod Pro")])
    }

}

struct BootcampEnvironmentObject: View {
    
    @StateObject var device: DeviceViewModel = DeviceViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(device.deviceViewModel) { device in
                    NavigationLink {
                        SecondPage(deviceName: device.name, deviceInSecondPage: self.device)
                    } label: {
                        Text(device.name)
                            .font(.system(size: 16, weight: .semibold, design: .rounded))
                    }

                    }
            }.navigationTitle("Device List")
        }
    }
}

struct SecondPage: View{
    
    let deviceName: String
    @ObservedObject var deviceInSecondPage: DeviceViewModel
    
    var body: some View{
        NavigationLink {
            ThirdPage(viewModel: deviceInSecondPage)
        } label: {
            Text(deviceName)
                .font(.system(size: 36, weight: .semibold, design: .rounded))
                .foregroundColor(.white)
                .padding(.all, 20)
                .background(.blue)
                .cornerRadius(40)
        }
    }
    
}

struct ThirdPage: View{
    
    @ObservedObject var viewModel: DeviceViewModel
    
    var body: some View{
        ForEach(viewModel.deviceViewModel) { item in
            Text(item.name)
                .padding(19)
        }
    }
    
}


struct BootcampEnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        BootcampEnvironmentObject()
    }
}
