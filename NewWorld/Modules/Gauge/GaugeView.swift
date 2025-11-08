//
//  GaugeView.swift
//  NewWorld
//
//  Created by Innocrux on 30/07/24.
//

import SwiftUI

struct GaugeView: View {
    @State private var progress = 0.5
    var body: some View {
        VStack {
//            Gauge(value: progress) {
//                Text("Upload Data")
//            }
//            
//            Gauge(value: progress) {
//                Text("Upload Data")
//            } currentValueLabel: {
//                Text(progress.formatted(.percent))
//            } minimumValueLabel: {
//                Text(0.formatted(.percent))
//            } maximumValueLabel: {
//                Text(100.formatted(.percent))
//            }
//            
            Gauge(value: progress) {
            } currentValueLabel: {
                Text(progress.formatted(.percent))
                    .font(.system(size: 10))
            }
            .tint(.blue)
            .scaleEffect(5.0)
//            .gaugeStyle(.accessoryCircular)
//            .gaugeStyle(.linearCapacity)
            .gaugeStyle(.accessoryCircularCapacity)
//            .gaugeStyle(.accessoryLinear)
//            .gaugeStyle(.accessoryLinearCapacity)
//            .gaugeStyle(.automatic)
            
        }
        .padding(.horizontal, 15)
    }
}

#Preview {
    GaugeView()
}
