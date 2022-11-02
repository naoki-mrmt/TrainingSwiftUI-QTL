//
//  DataTransferSampleView.swift
//  Task2
//
//  Created by Naoki Muramoto on 2022/10/25.
//

import SwiftUI

struct DataTransferSampleView: View {
    // MARK: - Property Wrappers
    @State private var value = ""

    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("値渡し")) {
                    TextField("値を入力してください", text: $value)
                    NavigationLink {
                        NavigationLinkView(value: value)
                    } label: {
                        Text("NavigationLink")
                    }
                }
                Section(header: Text("値戻し")) {}
                Section(header: Text("ライセンス表示")) {
                    Button(action: {
                        // swiftlint:disable force_unwrapping
                        UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
                        // swiftlint:enable force_unwrapping
                    }, label: {
                        Text("ライセンス").foregroundColor(Color.black)
                    }) //: Button
                }
            } //: List
            .listStyle(GroupedListStyle())
            .navigationBarTitle("DataTransferSample")
        } //: NavigationView
    }
}

struct DataTransferSampleView_Previews: PreviewProvider {
    static var previews: some View {
        DataTransferSampleView()
    }
}
