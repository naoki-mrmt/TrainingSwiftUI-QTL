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
        TextField("値を入力してください", text: $value)
    }
}
