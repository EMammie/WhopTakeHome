//
//  ContentView.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm : WhopListViewModel
    
    var body: some View {
        NavigationStack{
            List(vm.items) { item in
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
                if !vm.isFinished {
                  ProgressView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundColor(.black)
                    .foregroundColor(.red)
                    .onAppear {
                        vm.load()
                        loadMoreContent()
                    }
                }
                
            }
            .listStyle(.plain)
            .navigationDestination(for: ListItem.self) { item in
                switch item {
                case .folder(listitems: _):
                    WhopWebView(url: item.url)
                        .edgesIgnoringSafeArea(.all)
                case .listItem:
                    WhopWebView(url: item.url)
                                .edgesIgnoringSafeArea(.all)
                }
                
            }
        }
    }
    
    func loadMoreContent() {
        if !vm.isLoading {
            vm.isLoading = true
          // This simulates an asynchronus call
          DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {

              vm.isLoading = false

              vm.isFinished = true

          }
        }
      }
    
}

#Preview {
    ContentView(vm: WhopListViewModel())
}
