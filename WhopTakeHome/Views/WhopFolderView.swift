//
//  WhopFolderView.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import SwiftUI

struct WhopFolderView: View {
    @State var whopFolder : WhopListItem
    
    var body: some View {
        VStack {
            Text("📂 : \(whopFolder.name)")
        }
        .padding()
    }
}

#Preview {
    WhopFolderView(whopFolder: WhopListItem.fixture(name: " Whop Folder", type:.folder,listitems: [.fixture(),.fixture()]))
    
}
