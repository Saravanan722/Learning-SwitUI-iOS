//
//  TextFieldView.swift
//  NewWorld
//
//  Created by Innocrux on 30/07/24.
//

import SwiftUI

struct TextFieldView: View {
    @State private var userName = ""
    var body: some View {
        VStack {
            TextField("Please enter your name", text: $userName, axis: .vertical)
                .lineLimit(5)
            
            TextField("Please enter your name", text: $userName, axis: .vertical)
                            .lineLimit(1...3)
        }
        .padding(.horizontal, 15)
    }
}

#Preview {
    TextFieldView()
}
