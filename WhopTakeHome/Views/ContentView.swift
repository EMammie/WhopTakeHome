//
//  ContentView.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import SwiftUI

struct ContentView: View {
    @State var items = [ListItem.listItem,
                        ListItem.folder(listitems: [ListItem.listItem])]
    
    var body: some View {
        NavigationStack{
            List(items) { item in
                
                WhopListView(listItem: item)
                    .background {
                    NavigationLink(item.name, value: item)
                }
            }
            .navigationDestination(for: ListItem.self) { item in
                WhopWebView(url: item.url)
                            .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

#Preview {
    ContentView()
}
