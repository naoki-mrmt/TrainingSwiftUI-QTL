//
//  DataBackView.swift
//  Task2
//
//  Created by Naoki Muramoto on 2022/11/02.
//

import SwiftUI

struct DataBackView: View {
    // MARK: - Property Wrappers
    @Binding var value: String

    // MARK: - Body
    var body: some View {
        TextField(TextConst.inputValue, text: $value)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(16.0)
    }
}
