//
//  WhopWebView.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import Foundation

import SwiftUI
import WebKit  

struct WhopWebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView  {
        let wkwebView = WKWebView()
        let request = URLRequest(url: url)
        wkwebView.load(request)
        return wkwebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}
