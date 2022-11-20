//
//  EventInformationView.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/13.
//

import SwiftUI

struct EventInformationView: View {
    // MARK: - Properties
    let image: String
    let title: String

    // MARK: - Body
    var body: some View {
        HStack {
            Image(systemName: image)
                .imageScale(.medium)
                .foregroundColor(.purple)
            Text(title)
        } //: HStack
        .padding(Edge.Set.bottom, AppConst.Size.padding4)
    }
}

struct EventInformationView_Previews: PreviewProvider {
    static var previews: some View {
        EventInformationView(image: "mappin.and.ellipse", title: "オンライン")
    }
}
