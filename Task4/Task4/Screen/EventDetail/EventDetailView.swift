//
//  EventDetailView.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/13.
//

import SwiftUI

struct EventDetailView: View {
    // MARK: - Property Wrappers
    @ObservedObject private var vm = EventDetailViewModel()
    // MARK: - Properties
    let event: Event

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading) {
            Text(AppConst.Text.eventDetail)
                .font(.title)
            AsyncImageView(
                imageURL: vm.imageURL
            )
            .padding(24.0)
            .onAppear {
                vm.fetchImage(pageURL: event.eventURL)
            }
            VStack(alignment: .leading) {
                if event.overview != AppConst.Text.emptyWords {
                    Text(AppConst.Text.overview)
                        .font(.title2)
                        .padding(Edge.Set.bottom, AppConst.Size.padding4)
                    Text(event.overview)
                        .padding(Edge.Set.bottom, AppConst.Size.padding8)
                }
                EventInformationView(
                    image: AppConst.Image.calendar,
                    title: event.startDate
                )
                EventInformationView(
                    image: AppConst.Image.person,
                    title: event.ownerName
                )
                if event.address  != AppConst.Text.emptyWords {
                    EventInformationView(
                        image: AppConst.Image.mappin,
                        title: event.address
                    )
                }
                NavigationLink {
                    SafariView(
                        title: event.title,
                        url: event.eventURL
                    )
                } label: {
                    Text(AppConst.Text.eventRegistration)
                }
            } //: VStack
            .padding(Edge.Set.leading, AppConst.Size.padding16)
            Spacer()
        } //: VStack
        .padding(AppConst.Size.padding16)
        .navigationBarTitle(event.title, displayMode: .inline)
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailView(
            event: Event(
                id: 264543,
                title: "完全Swift化を遂げたネイティブアプリのこれまでとこれから",
                overview: "",
                description: "",
                eventURL: "https://flexy.connpass.com/event/264543/",
                startDate: "2022-11-21T12:00:00+09:00",
                ownerID: 489283,
                ownerName: "yuki_hirata14",
                place: "FLEXY",
                address: "オンライン",
                lat: nil,
                lon: nil
            )
        )
    }
}
