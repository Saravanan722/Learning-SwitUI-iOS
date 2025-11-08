//
//  ConstantBindingView.swift
//  NewWorld
//
//  Created by Innocrux on 31/07/24.
//

import SwiftUI

struct ConstantBindingView: View {
    var body: some View {
        TextField("Example placeholder", text: .constant("Hello"))
            .textFieldStyle(.roundedBorder)
        
        Slider(value: .constant(0.5))
    }
}

#Preview {
    ConstantBindingView()
}
