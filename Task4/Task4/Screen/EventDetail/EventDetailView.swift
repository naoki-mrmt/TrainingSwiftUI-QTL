//
//  EventDetailView.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/13.
//

import SwiftUI

struct EventDetailView: View {
    // MARK: - Properties
    let event: Event

    // MARK: - Body
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
