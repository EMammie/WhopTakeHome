//
//  WhopExpandableListItemView.swift
//  WhopTakeHome
//
//  Created by  Eugene Mammie on 8/6/24.
//

import SwiftUI

struct WhopExpandableListItemView: View {
        @Namespace private var ExpandedNamespace
        @State private var show = false
        
        var thumbnail: WhopThumbnailView
        var expanded: WhopExpandedView
        
        var thumbnailViewBackgroundColor: Color = .blue.opacity(0.8)
        var expandedViewBackgroundColor: Color = .blue
        
        var thumbnailViewCornerRadius: CGFloat = 5
        var expandedViewCornerRadius: CGFloat = 5
        var body: some View {
            ZStack {
                if !show {
                    thumbnailView()
                } else {
                    expandedView()
                }
            }
            .onTapGesture {
                if !show {
                    withAnimation (.spring(response: 0.6, dampingFraction: 0.8)){
                        show.toggle()
                    }
                }
            }
        }
        
        @ViewBuilder
    private func thumbnailView() -> some View {
            ZStack {
                thumbnail
                    .matchedGeometryEffect(id: "view", in: ExpandedNamespace)
            }
            .background(
                thumbnailViewBackgroundColor.matchedGeometryEffect(id: "background", in: ExpandedNamespace)
            )
            .mask(
                RoundedRectangle(cornerRadius: thumbnailViewCornerRadius, style: .continuous)
                    .matchedGeometryEffect(id: "mask", in: ExpandedNamespace)
            )
        }
        
        @ViewBuilder
        private func expandedView() -> some View {
            ZStack {
                expanded
                    .matchedGeometryEffect(id: "view", in: ExpandedNamespace)
                .background(
                    expandedViewBackgroundColor
                        .matchedGeometryEffect(id: "background", in: ExpandedNamespace)
                )
                .mask(
                    RoundedRectangle(cornerRadius: expandedViewCornerRadius, style: .continuous)
                        .matchedGeometryEffect(id: "mask", in: ExpandedNamespace)
                )

                Button {
                    withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .matchedGeometryEffect(id: "mask", in: ExpandedNamespace)
            }
        }
    
}

struct WhopThumbnailView: View, Identifiable {
    var id = UUID()
    @ViewBuilder var content: any View
    
    var body: some View {
        ZStack {
            AnyView(content)
        }
    }
}

struct WhopExpandedView: View, Identifiable {
    var id = UUID()
    @ViewBuilder var content: any View
    
    var body: some View {
        ZStack {
            AnyView(content)
        }
    }
}

//#Preview {
//    WhopExpandableListItemView()
//}
