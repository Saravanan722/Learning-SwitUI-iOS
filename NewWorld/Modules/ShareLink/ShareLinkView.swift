//
//  ShareLinkView.swift
//  NewWorld
//
//  Created by Innocrux on 30/07/24.
//

import SwiftUI

struct ShareLinkView: View {
    private let urlToShare = URL(string: "https://www.oneclickitsolution.com/blog")!
    
    var body: some View {
        VStack {
            ShareLink(item: urlToShare) {
                Label("Share From Here", systemImage: "square.and.arrow.up.circle")
            }
            .presentationDetents([.medium, .large])
            
        }
    }
}

#Preview {
    ShareLinkView()
}
