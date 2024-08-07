//
//  WhopListViewModel.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import Foundation



class WhopListViewModel: ObservableObject {
    @Published var isLoading = false
    @Published var isFinished = false

    @Published var whopItems: [WhopListItem] = [.fixture(), .fixture(),
                                                .fixture(type: .folder, listitems: [.fixture()])]
    @MainActor
    func load() {
        DispatchQueue.global(qos: .background).async {
            _ = Bundle.main.decodeable(fileName: "mock_data.json")
                .receive(on: DispatchQueue.main)
                .sink(receiveCompletion: { completion in
                    switch completion {
                    case .finished:
                        break
                    case .failure(let error):
                        print("Error: \(error.localizedDescription)")
                    }
                }, receiveValue: { (response: WhopListResponse) in
                    self.isLoading = false

                    self.isFinished = true
                    self.whopItems = response.list
                })
        }
    }
}
