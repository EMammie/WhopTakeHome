//
//  WhopitemView.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import SwiftUI

struct WhopItemView: View {
    @State var listItem : ListItem
    var body: some View {
        VStack {
            Text(listItem.name)
            HStack {
                Text("✨")
                Text(String(listItem.id.uuidString))
            }
            
        }.background(.cyan)
    }
}

#Preview {
    WhopItemView(listItem: ListItem.listItem)
}
