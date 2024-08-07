//
//  WhopFolderView.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import SwiftUI

struct WhopFolderView: View {
    @State var folder : ListItem
    var body: some View {
        VStack {
            Text("📂 \(folder.name)")
            Text(folder.id.uuidString)
        }
        .padding()
    }
}

#Preview {
    WhopFolderView(folder: .folder(listitems: [ListItem.listItem]))
}
