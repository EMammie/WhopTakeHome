//
//  WhopListViewModel.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import Foundation

class WhopListViewModel : ObservableObject {
    @Published var isLoading = false
    @Published var isFinished = false
    @Published var items: [ListItem] = [ListItem.listItem,
                                                           ListItem.listItem,
                                                           ListItem.folder(listitems: [ListItem.listItem,ListItem.listItem])]
    
    func load () {
        DispatchQueue.global(qos: .background).async {
            _ = Bundle.main.decodeable(fileName: "mock_data_a.json")
                .sink(receiveCompletion: { completion in
                    switch completion {
                    case .finished:
                        break
                    case .failure(let error):
                        print("Error: \(error.localizedDescription)")
                    }
                }, receiveValue: { (response: ListItemResponse ) in
                    self.items = response.list
                })
        }
    }
    
}
