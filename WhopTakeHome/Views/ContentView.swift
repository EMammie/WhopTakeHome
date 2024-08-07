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
            List($vm.whopItems, children: \.listitems) { item in
                let anItem = item.wrappedValue
               
                switch anItem.type {
                case .folder:
                    VStack {
                        Text("📂 Folder : \(anItem.name)")
                    }
                case .listItem:
                    VStack {
                        HStack {
                            Text("✨ Item ")
                            Text(":\(anItem.name)")
                        }
                        
                    }
                    .background(.cyan.opacity(0.1))
                    .background {
                                                    NavigationLink(value: anItem){}
                                            }
                    
                }
                
                /* Custom Expanded View
                 
                                switch anItem.type {
                                    case .listItem :
                                    WhopItemView(whopListItem: anItem)
                                            .background {
                                                NavigationLink(value: anItem){}
                                        }
                                case .folder:
                
                                    WhopExpandableListItemView(thumbnail:
                                                                WhopThumbnailView(content: {
                                        WhopFolderView(folder:item)
                                    }), expanded: WhopExpandedView(content: {
                                        VStack{
                                            ForEach(anItem.listitems){ item in
                                                Text("📂 : \(item.name)")
                                            }
                                        }
                                    })) */
            
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
            .navigationDestination(for: WhopListItem.self) { item in
                switch item.type {
                case .folder:
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
            
            vm.load()
          // This simulates an asynchronus call

        }
      }
    
}

#Preview {
    ContentView(vm: WhopListViewModel())
}
