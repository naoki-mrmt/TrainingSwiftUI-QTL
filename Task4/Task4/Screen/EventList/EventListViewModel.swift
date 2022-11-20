//
//  EventListViewModel.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/13.
//

import Foundation

class EventViewModel: ObservableObject {

    // MARK: - Property Wrappers
    @Published var events: [Event] = []
}

extension EventViewModel {
    func fetchEvent() {
        Task {
            let result = await NetworkManager.shared.fetch(ConnpassAPI(), type: Events.self)
            DispatchQueue.main.async {
                self.addData(result)
            }
        }
    }

    private func addData(_ result: Result<Events, Error>) {
        switch result {
        case .success(let events):
            self.events = events.events
        case .failure(let error):
            print(error)
        }
    }
}
