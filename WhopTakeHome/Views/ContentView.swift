//
//  ContentView.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import SwiftUI

struct ContentView: View {
    @State var items = [ListItem.listItem,
                        ListItem.listItem,
                        ListItem.folder(listitems: [ListItem.listItem,ListItem.listItem])]
    
    @State private var isLoading = false
    @State private var isFinished = false
    @State var vm : WhopListViewModel
    
    var body: some View {
        NavigationStack{
            List(items) { item in
                switch item {
                    case .listItem :
                        WhopItemView(listItem: item)
                            .background {
                                NavigationLink(value: item){}
                        }
                    case .folder(listitems: let folderItems ):

                    WhopExpandableListItemView(thumbnail:
                                                WhopThumbnailView(content: {
                        WhopFolderView(folder:item)
                    }), expanded: WhopExpandedView(content: {
                        VStack{
                            ForEach(folderItems){ item in
                                Text("📂 : \(item.name)")
                            }
                        }
                    }))
                }
                if !isFinished {
                  ProgressView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundColor(.black)
                    .foregroundColor(.red)
                    .onAppear {
                      loadMoreContent()
                    }
                }
                
            }
            .listStyle(.plain)
            .navigationDestination(for: ListItem.self) { item in
                switch item {
                case .folder(listitems: _):
                    Rectangle()
                case .listItem:
                    WhopWebView(url: item.url)
                                .edgesIgnoringSafeArea(.all)
                }
                
            }
        }
    }
    
    func loadMoreContent() {
        if !isLoading {
          isLoading = true
          // This simulates an asynchronus call
          DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            //let moreNumbers = numbers.count + 1...numbers.count + 20
           // numbers.append(contentsOf: moreNumbers)
            isLoading = false
//            if numbers.count > 250 {
              isFinished = true
//            }
          }
        }
      }
    
}

#Preview {
    ContentView(vm: WhopListViewModel())
}
