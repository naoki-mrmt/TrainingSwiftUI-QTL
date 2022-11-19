//
//  EventListView.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/12.
//

import SwiftUI

struct EventListView: View {
    // MARK: - Property Wrappers
    @ObservedObject private var vm = EventViewModel()

    // MARK: - Body
    var body: some View {
        NavigationView {
            List(vm.events) { event in
                NavigationLink {
                    EventDetailView(event: event)
                } label: {
                    EventCellView(event: event)
                }

            } //: List
            .onAppear {
                vm.fetchEvent()
            }
            .listStyle(.automatic)
            .navigationBarTitle(AppConst.Text.event)
        } //: NavigationView
    }
}

struct EventListView_Previews: PreviewProvider {
    static var previews: some View {
        EventListView()
    }
}
