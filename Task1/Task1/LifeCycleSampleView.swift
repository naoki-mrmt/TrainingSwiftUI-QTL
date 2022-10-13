//
//  LifeCycleSampleView.swift
//  Task1
//
//  Created by Naoki Muramoto on 2022/10/12.
//

import SwiftUI

struct LifeCycleSampleView: View {
    @Environment(\.scenePhase) private var scenePhase

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                print("onAppear")
            }
            .onDisappear {
                print("onDisappear")
            }
            .onChange(of: scenePhase) {
                switch $0 {
                case .active:
                    print("active")
                case .inactive:
                    print("inactive")
                case .background:
                    print("background")
                @unknown default:
                    print("@unknown")
                }
            }
    }
}

struct LifeCycleSampleView_Previews: PreviewProvider {
    static var previews: some View {
        LifeCycleSampleView()
    }
}
