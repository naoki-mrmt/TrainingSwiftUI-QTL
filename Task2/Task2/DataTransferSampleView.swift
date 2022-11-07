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
    @State private var isShowingModalView = false
    @State private var isShowingHalfModalView = false
    @State private var hoge = ""

    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("値渡し")) {
                    TextField("値を入力してください", text: $value)
                    NavigationLink {
                        DataTransferView(value: value)
                    } label: {
                        Text("NavigationLink")
                    }
                    Button {
                        isShowingHalfModalView.toggle()
                    } label: {
                        Text("HalfModal")
                    }
                    .sheet(isPresented: $isShowingHalfModalView) {
                        Text(value)
                            .presentationDetents([.medium, .large])
                    }
                    Button {
                        isShowingModalView.toggle()
                    } label: {
                        Text("Present")
                    }
                    .sheet(isPresented: $isShowingModalView) {
                        DataTransferView(value: value)
                    }
                }
                Section(header: Text("値戻し")) {
                    Text("戻された値: \(hoge)")
                    NavigationLink {
                        DataBackView(value: $hoge)
                    } label: {
                        Text("NavigationLink")
                    }
                }
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
