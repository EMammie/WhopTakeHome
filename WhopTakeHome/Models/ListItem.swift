//
//  ListItem.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import Foundation

indirect enum ListItem: Identifiable {
    var id: UUID { return UUID() }
    
    var url: URL { URL(string: "https://www.yahoo.com")!}
    
    var name: String {
        switch self {
            case .listItem:
            return "Item: \(id.description.trunc(length: 6))"
            case .folder(listitems: _ ):
            return "Folder: \(id.description.trunc(length: 6))"
        }
    }
    case listItem
    case folder(listitems: [ListItem])
}

extension ListItem: Hashable, Decodable  {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
