//
//  WhopListViewModel.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import Foundation

class WhopListViewModel : ObservableObject {
    @Published var items: [ListItem] = []
    
    func load () {
        _ = Bundle.main.decodeable(fileName: "mock_data.json")
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
