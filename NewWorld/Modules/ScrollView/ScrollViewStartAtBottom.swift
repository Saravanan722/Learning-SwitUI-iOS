//
//  ScrollViewStartAtBottom.swift
//  NewWorld
//
//  Created by Innocrux on 30/07/24.
//

import SwiftUI

struct ScrollViewStartAtBottom: View {
    var body: some View {
        ScrollView {
            ForEach(0..<50) { i in
                Text("Item \(i)")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.blue)
                    .clipShape(.rect(cornerRadius: 25))
            }
        }
//        .defaultScrollAnchor(.bottom)
    }
}

#Preview {
    ScrollViewStartAtBottom()
}
