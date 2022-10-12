//
//  LifeCycleSampleView.swift
//  Task1
//
//  Created by Naoki Muramoto on 2022/10/12.
//

import SwiftUI

struct LifeCycleSampleView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                print("onAppear")
            }
            .onDisappear {
                print("onDisappear")
            }
    }
}

struct LifeCycleSampleView_Previews: PreviewProvider {
    static var previews: some View {
        LifeCycleSampleView()
    }
}
