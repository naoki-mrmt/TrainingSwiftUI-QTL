//
//  DataTransferSampleView.swift
//  Task2
//
//  Created by Naoki Muramoto on 2022/10/25.
//

import SwiftUI

struct DataTransferSampleView: View {
    // MARK: - Property Wrappers
    @State private var passValue = ""
    @State private var isShowingModalView = false
    @State private var isShowingHalfModalView = false
    @State private var getValue = ""

    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                Section(header: Text(TextConst.dataTransfer)) {
                    TextField("値を入力してください", text: $passValue)
                    NavigationLink {
                        DataTransferView(value: passValue)
                    } label: {
                        Text(TextConst.navigationLink)
                    }
                    Button {
                        isShowingHalfModalView.toggle()
                    } label: {
                        Text(TextConst.halfModal).foregroundColor(Color.black)
                    }
                    .sheet(isPresented: $isShowingHalfModalView) {
                        Text(passValue)
                            .presentationDetents([.medium, .large])
                    }
                    Button {
                        isShowingModalView.toggle()
                    } label: {
                        Text(TextConst.present).foregroundColor(Color.black)
                    }
                    .sheet(isPresented: $isShowingModalView) {
                        DataTransferView(value: passValue)
                    }
                }
                Section(header: Text(TextConst.dataBack)) {
                    Text("戻された値: \(getValue)")
                    Text(TextConst.returnedValue + getValue)
                    NavigationLink {
                        DataBackView(value: $getValue)
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
