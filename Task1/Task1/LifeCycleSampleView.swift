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
    @State private var isShowingOnAppear = false
    @State private var isShowingOnDisappear = false
    @State private var isShowingActive = false
    @State private var isShowingInactive = false
    @State private var isShowingBackground = false

    var body: some View {
        Text(TextConst.appName)
            .onAppear {
                print(TextConst.onAppear)
                isShowingOnAppear.toggle()
            }
            .onDisappear {
                print(TextConst.onDisappear)
                isShowingOnDisappear.toggle()
            }
            .onChange(of: scenePhase) {
                switch $0 {
                case .active:
                    print(TextConst.active)
                    isShowingActive.toggle()
                case .inactive:
                    print(TextConst.inactive)
                    isShowingInactive.toggle()
                case .background:
                    print(TextConst.background)
                    isShowingBackground.toggle()
                @unknown default:
                    print(TextConst.unknown)
                }
            }
            .toast(isPresenting: $isShowingOnAppear) {
                AlertToast(displayMode: .hud, type: .regular, title: TextConst.onAppear)
            }
            .toast(isPresenting: $isShowingOnDisappear) {
                AlertToast(displayMode: .hud, type: .regular, title: TextConst.onDisappear)
            }
            .toast(isPresenting: $isShowingActive) {
                AlertToast(displayMode: .hud, type: .regular, title: TextConst.active)
            }
            .toast(isPresenting: $isShowingInactive) {
                AlertToast(displayMode: .hud, type: .regular, title: TextConst.inactive)
            }
            .toast(isPresenting: $isShowingBackground) {
                AlertToast(displayMode: .hud, type: .regular, title: TextConst.background)
            }
    }
}

struct LifeCycleSampleView_Previews: PreviewProvider {
    static var previews: some View {
        LifeCycleSampleView()
    }
}
