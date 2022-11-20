//
//  ImageExtension.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/16.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self.resizable().scaledToFit()
    }

    func iconModifier() -> some View {
        self.imageModifier().frame(maxWidth: 128)
    }
}
