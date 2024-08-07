//
//  ListItem.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import Foundation

struct WhopListItem: Codable, Identifiable {
    var id: UUID
    var url: URL
    var name: String
    var type: ItemType
    var listitems: [WhopListItem]?

    enum ItemType: String, Codable {
        case listItem
        case folder
    }
}

struct WhopListResponse: Codable {
    var list: [WhopListItem]
}

extension WhopListItem {
    static func fixture(
        id: UUID = UUID(),
        url: URL = URL(string: "https://www.yahoo.com")!,
        name: String = "Whop",
        type: ItemType = .listItem,
        listitems: [WhopListItem]? = nil)
        -> WhopListItem
    {
        WhopListItem(id: id,
                     url: url,
                     name: name,
                     type: type,
                     listitems: listitems)
    }
}

extension WhopListItem : Hashable {
    
}

//indirect enum ListItem: Identifiable {
//    var id: UUID { return UUID() }
//
//    var url: URL { URL(string: "https://www.yahoo.com")! }
//
//    var name: String {
//        switch self {
//            case .listItem:
//                return "Item: \(id.description.trunc(length: 6))"
//            case .folder(listitems: _):
//                return "Folder: \(id.description.trunc(length: 6))"
//        }
//    }
//
//    case listItem
//    case folder(listitems: [ListItem])
//}
//
//extension ListItem: Hashable, Encodable, Decodable {
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//    }
//
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//    }
//}
