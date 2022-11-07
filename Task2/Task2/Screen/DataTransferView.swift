//
//  NavigationLinkView.swift
//  Task2
//
//  Created by Naoki Muramoto on 2022/10/25.
//

import SwiftUI

struct DataTransferView: View {
    let value: String

    var body: some View {
        Text(value)
    }
}

struct NavigationLinkView_Previews: PreviewProvider {
    static var previews: some View {
        DataTransferView(value: "value")
    }
}
