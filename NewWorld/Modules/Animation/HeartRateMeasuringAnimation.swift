//
//  HeartRateMeasuringAnimation.swift
//  NewWorld
//
//  Created by Innocrux on 17/09/24.
//

import SwiftUI

struct HeartRateMeasuringAnimation: View {
    @State var measuring = false
    
    let blue = Color(#colorLiteral(red: 0, green: 0.3725490196, blue: 1, alpha: 1))
    let red = Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
    
    var body: some View {
        ZStack {
            Color.black
            VStack(alignment: .leading) {
                Text("Measuring Heart Rate")
                    .foregroundColor(.white)
                    .bold()
                Rectangle()
                    .stroke(
                        style:
                            StrokeStyle(
                                lineWidth: 5,
                                lineCap: .round,
                                lineJoin: .round,
                                miterLimit: 0,
                                dash: [150, 15],
                                dashPhase: measuring ? -83 : 83
                            )
                    )
                    .frame(width: 54, height: 64)
                    .foregroundStyle(
                        .angularGradient(
                            colors: [blue, red, blue],
                            center: .center,
                            startAngle: .degrees(measuring ? 360 : 0),
                            endAngle: .degrees(measuring ? 720 : 360)
                        )
                    )
                    .hueRotation(.degrees(measuring ? 0 : 360))
                    .onAppear {
                        withAnimation(.linear(duration: 2.5)
                            .repeatForever(autoreverses: false)) {
                                measuring.toggle()
                            }
                    }
            }
        }
    }
}

#Preview {
    HeartRateMeasuringAnimation()
}
