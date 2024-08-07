//
//  Bundle+Extension.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import Foundation
import Combine

extension Bundle{
  // Part 1
    func readFile(file: String) -> AnyPublisher<Data, Error> {
        self.url(forResource: file, withExtension: nil)
            .publisher
            .tryMap{ string in
                guard let data = try? Data(contentsOf: string) else {
                    fatalError("Failed to load \(file) from bundle.")
                }
                return data
            }
            .mapError { error in
                return error
            }.eraseToAnyPublisher()
    }
      // Part 2
    func decodeable<T: Decodable>(fileName: String) -> AnyPublisher<T, Error> {
        readFile(file: fileName)
            .decode(type: T.self, decoder: JSONDecoder())
            .mapError { error in
                return error
            }
            .eraseToAnyPublisher()
        
    }
}
//struct ListItemResponse: Decodable {
//    let list: [ListItem]
//}
