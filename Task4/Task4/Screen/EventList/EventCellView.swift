//
//  EventCellView.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/13.
//

import SwiftUI

struct EventCellView: View {
    // MARK: - Properties
    let event: Event

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading) {
            Text(event.title)
                .bold()
                .font(.headline)
                .lineLimit(2)
                .padding(Edge.Set.top, AppConst.Size.padding8)
                .padding(Edge.Set.bottom, AppConst.Size.padding12)
            EventInformationView(
                image: AppConst.Image.calendar,
                title: event.startDate
            )
            if event.address != AppConst.Text.emptyWords {
                EventInformationView(
                    image: AppConst.Image.mappin,
                    title: event.address
                )
            }
        } //: VStack
    }
}

struct EventCellView_Previews: PreviewProvider {
    static var previews: some View {
        EventCellView(
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
