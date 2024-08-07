//
//  WhopTakeHomeApp.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import SwiftUI

@main
struct WhopTakeHomeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(vm: WhopListViewModel())
        }
    }
}
