//
//  ListSampleView.swift
//  Task3
//
//  Created by Naoki Muramoto on 2022/11/09.
//

import SwiftUI

struct ListSampleView: View {
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(AppConst.Text.dummyList, id: \.self) {
                    Text($0)
                }
            } //: List
            .navigationTitle(AppConst.Text.title)
        } //: NavigationView
    }
}

struct ListSampleView_Previews: PreviewProvider {
    static var previews: some View {
        ListSampleView()
    }
}
