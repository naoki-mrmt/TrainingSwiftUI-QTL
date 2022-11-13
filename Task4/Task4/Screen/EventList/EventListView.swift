//
//  EventListView.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/12.
//

import SwiftUI

struct EventListView: View {
    // MARK: - Property Wrappers
    @ObservedObject private var viewModel = EventViewModel()

    // MARK: - Body
    var body: some View {
        NavigationView {
            List(viewModel.events) {
                Text($0.title)
            } //: List
            .onAppear {
                viewModel.fetchEvent()
            }
            .listStyle(.automatic)
            .navigationBarTitle("Event")
        } //: NavigationView
    }
}

struct EventListView_Previews: PreviewProvider {
    static var previews: some View {
        EventListView()
    }
}
