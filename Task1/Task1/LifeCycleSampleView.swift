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
        Text(TextConst.appName)
            .onAppear {
                print(TextConst.onAppear)
                showOnAppear.toggle()
            }
            .onDisappear {
                print(TextConst.onDisappear)
                showOnDisappear.toggle()
            }
            .onChange(of: scenePhase) {
                switch $0 {
                case .active:
                    print(TextConst.active)
                    showActive.toggle()
                case .inactive:
                    print(TextConst.inactive)
                    showInactive.toggle()
                case .background:
                    print(TextConst.background)
                    showBackground.toggle()
                @unknown default:
                    print(TextConst.unknown)
                }
            }
            .toast(isPresenting: $showOnAppear) {
                AlertToast(displayMode: .hud, type: .regular, title: TextConst.onAppear)
            }
            .toast(isPresenting: $showOnDisappear) {
                AlertToast(displayMode: .hud, type: .regular, title: TextConst.onDisappear)
            }
            .toast(isPresenting: $showActive) {
                AlertToast(displayMode: .hud, type: .regular, title: TextConst.active)
            }
            .toast(isPresenting: $showInactive) {
                AlertToast(displayMode: .hud, type: .regular, title: TextConst.inactive)
            }
            .toast(isPresenting: $showBackground) {
                AlertToast(displayMode: .hud, type: .regular, title: TextConst.background)
            }

    }
}

struct LifeCycleSampleView_Previews: PreviewProvider {
    static var previews: some View {
        LifeCycleSampleView()
    }
}
