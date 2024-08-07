//
//  WhopitemView.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import SwiftUI

struct WhopItemView: View {
    //@State var listItem : ListItem
    @State var whopListItem : WhopListItem

    var body: some View {
        VStack {
            Text(whopListItem.name)
            HStack {
                Text("✨")
                Text(String(whopListItem.id.uuidString))
            }
            
        }.background(.cyan)
    }
}

#Preview {
    WhopItemView(whopListItem: WhopListItem.fixture())
}
