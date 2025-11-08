//
//  AnimationForeverView.swift
//  NewWorld
//
//  Created by Innocrux on 30/07/24.
//

import SwiftUI

struct AnimationForeverView: View {
    @State var scale = 1.0
    
    var body: some View {
        Circle()
            .frame(width: 200, height: 200)
            .scaleEffect(scale)
            .onAppear {
                let baseAnimation = Animation.easeInOut(duration: 1)
                let repeated = baseAnimation.repeatForever(autoreverses: true)
                
                withAnimation(repeated) {
                    scale = 0.5
                }
            }
        
        Circle()
            .frame(width: 200, height: 200)
            .scaleEffect(scale)
            .animateForever(autoreverses: true) { scale = 0.5 }
    }
}

#Preview {
    AnimationForeverView()
}
