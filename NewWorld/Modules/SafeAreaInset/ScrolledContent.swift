//
//  ScrolledContent.swift
//  NewWorld
//
//  Created by Innocrux on 09/09/24.
//

import SwiftUI

struct ScrolledContent: View {
    var body: some View {
        ForEach(0..<10) { data in
            RoundedRectangle(cornerRadius: 10)
                .fill(.green)
                .frame(height: 50)
                .padding(.horizontal)
        }
    }
}

#Preview {
    ScrolledContent()
}
