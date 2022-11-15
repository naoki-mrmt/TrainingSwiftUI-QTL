//
//  AsyncImageView.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/16.
//

import SwiftUI

struct AsyncImageView: View {
    // MARK: - Properties
    let imageURL: String

    // MARK: - Body
    var body: some View {
        AsyncImage(
            url: URL(string: imageURL),
                transaction: Transaction(
                    animation: .spring(
                        response: 0.5,
                        dampingFraction: 0.6,
                        blendDuration: 0.25
                    )
                )
            ) {
            switch $0 {
            case .success(let image):
                image.imageModifier()
            case .failure, .empty:
                Image(systemName: "photo.circle.fill").iconModifier()
            @unknown default:
                ProgressView()
            }
        } //: AsyncImage
    }
}

struct AsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageView(imageURL: "https://soco-st.com/wp-content/themes/socost/upload/15033_color.svg")
    }
}
