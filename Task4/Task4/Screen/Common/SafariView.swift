//
//  SafariView.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/13.
//

import SwiftUI

struct SafariView: View {
    // MARK: - Properties
    let title: String
    let url: String

    // MARK: - Body
    var body: some View {
        // swiftlint:disable force_unwrapping
        WebView(url: URL(string: url)!).navigationBarTitle(title, displayMode: .inline)
        // swiftlint:enable force_unwrapping
    }
}

struct SafariView_Previews: PreviewProvider {
    static var previews: some View {
        SafariView(
            title: "完全Swift化を遂げたネイティブアプリのこれまでとこれから",
            url: "https://flexy.connpass.com/event/264543/"
        )
    }
}
