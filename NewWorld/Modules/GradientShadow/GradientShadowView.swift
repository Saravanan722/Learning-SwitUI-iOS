//
//  GradientShadowView.swift
//  NewWorld
//
//  Created by Innocrux on 30/07/24.
//

import SwiftUI

struct GradientShadowView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .frame(width: 150, height: 150)
                .background(in: Circle())
                .backgroundStyle(.orange.gradient)
                .foregroundStyle(.white.shadow(.drop(radius: 2, y: 5.0)))
//                .foregroundStyle(.white.shadow(.drop(radius: 4, x: 5.0)))
//                .foregroundStyle(.white.shadow(.inner(radius: 2)))

                .font(.system(size: 60))
        }
    }
}

#Preview {
    GradientShadowView()
}
