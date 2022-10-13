//
//  LifeCycleSampleView.swift
//  Task1
//
//  Created by Naoki Muramoto on 2022/10/12.
//

import SwiftUI
import AlertToast

struct LifeCycleSampleView: View {
    @Environment(\.scenePhase) private var scenePhase
    @State private var showOnAppear = false
    @State private var showOnDisappear = false
    @State private var showActive = false
    @State private var showInactive = false
    @State private var showBackground = false

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                print("onAppear")
                showOnAppear.toggle()
            }
            .onDisappear {
                print("onDisappear")
                showOnDisappear.toggle()
            }
            .onChange(of: scenePhase) {
                switch $0 {
                case .active:
                    print("active")
                    showActive.toggle()
                case .inactive:
                    print("inactive")
                    showInactive.toggle()
                case .background:
                    print("background")
                    showBackground.toggle()
                @unknown default:
                    print("@unknown")
                }
            }
            .toast(isPresenting: $showOnAppear){
                AlertToast(displayMode: .hud, type: .regular, title: "onAppear")
            }
            .toast(isPresenting: $showOnDisappear) {
                AlertToast(displayMode: .hud, type: .regular, title: "onDisappear")
            }
            .toast(isPresenting: $showActive) {
                AlertToast(displayMode: .hud, type: .regular, title: "active")
            }
            .toast(isPresenting: $showInactive) {
                AlertToast(displayMode: .hud, type: .regular, title: "inactive")
            }
            .toast(isPresenting: $showBackground) {
                AlertToast(displayMode: .hud, type: .regular, title: "background")
            }

    }
}

struct LifeCycleSampleView_Previews: PreviewProvider {
    static var previews: some View {
        LifeCycleSampleView()
    }
}
