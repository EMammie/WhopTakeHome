//
//  WhopListView.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import SwiftUI

struct WhopListView: View {
    @State var listItem : ListItem
    var body: some View {
        VStack {
            Text(listItem.name)
            Text(String(listItem.id.uuidString))
        }
    }
}

#Preview {
    WhopListView(listItem: ListItem.listItem)
}
