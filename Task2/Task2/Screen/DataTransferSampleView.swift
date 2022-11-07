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
                Section(header: Text(TextConst.dataTransfer)) {
                    TextField("値を入力してください", text: $value)
                    NavigationLink {
                        DataTransferView(value: value)
                    } label: {
                        Text(TextConst.navigationLink)
                    }
                    Button {
                        isShowingHalfModalView.toggle()
                    } label: {
                        Text(TextConst.halfModal).foregroundColor(Color.black)
                    }
                    .sheet(isPresented: $isShowingHalfModalView) {
                        Text(value)
                            .presentationDetents([.medium, .large])
                    }
                    Button {
                        isShowingModalView.toggle()
                    } label: {
                        Text(TextConst.present).foregroundColor(Color.black)
                    }
                    .sheet(isPresented: $isShowingModalView) {
                        DataTransferView(value: value)
                    }
                }
                Section(header: Text(TextConst.dataBack)) {
                    Text("戻された値: \(hoge)")
                    Text(TextConst.returnedValue + hoge)
                    NavigationLink {
                        DataBackView(value: $hoge)
                    } label: {
                        Text(TextConst.navigationLink)
                    }
                }
                Section(header: Text(TextConst.displayLicense)) {
                    Button(action: {
                        // swiftlint:disable force_unwrapping
                        UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
                        // swiftlint:enable force_unwrapping
                    }, label: {
                        Text(TextConst.license).foregroundColor(Color.black)
                    }) //: Button
                }
            } //: List
            .listStyle(GroupedListStyle())
            .navigationBarTitle(TextConst.appTitle)
        } //: NavigationView
    }
}

struct DataTransferSampleView_Previews: PreviewProvider {
    static var previews: some View {
        DataTransferSampleView()
    }
}
