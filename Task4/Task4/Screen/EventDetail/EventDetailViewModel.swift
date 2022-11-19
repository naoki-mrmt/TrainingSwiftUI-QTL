//
//  EventDetailViewModel.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/19.
//

import OpenGraph

class EventDetailViewModel: ObservableObject {
    // MARK: - Property Wrappers
    @Published var imageURL = AppConst.Text.emptyWords
}

extension EventDetailViewModel {
    // MARK: - Method
    func fetchImage(pageURL: String) {
        guard let url = URL(string: pageURL) else { return }
        fetchOGPData(url)
    }

    private func fetchOGPData(_ url: URL) {
        OpenGraph.fetch(url: url) {
            switch $0 {
            case .success(let og):
                guard let img = og[.image] else { return }
                self.imageURL = img
            case .failure(let error):
                print(error)
            }
        }
    }
}
