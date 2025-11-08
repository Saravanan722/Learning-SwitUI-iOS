//
//  RotationAnimation.swift
//  NewWorld
//
//  Created by Innocrux on 17/09/24.
//

import SwiftUI

struct RotationAnimation: View {
    @State private var isRotating = 0.0
    
    var body: some View {
        VStack {
            Image(systemName: "gear")
                .font(.system(size: 64))
                .rotationEffect(.degrees(isRotating))
                .onAppear {
                    withAnimation(.linear(duration: 1)
                        .speed(0.1).repeatForever(autoreverses: false)) {
                            isRotating = 360.0
                        }
                }
        }
        
        Rectangle()
            .fill(.green)
            .frame(width: 100, height: 100, alignment: .center)
            .clipShape(
                .rect(
                    topLeadingRadius: 0,
                    bottomLeadingRadius: 20,
                    bottomTrailingRadius: 0,
                    topTrailingRadius: 20
                )
            )
    }
}

#Preview {
    RotationAnimation()
}
