//
//  BottomSheetView.swift
//  NewWorld
//
//  Created by Innocrux on 30/07/24.
//

import SwiftUI

struct BottomSheetView: View {
    @State private var showingCredits = false
    let heights = stride(from: 0.1, through: 1.0, by: 0.1).map { PresentationDetent.fraction($0) }
    var body: some View {
        Button("Show Credits") {
            showingCredits.toggle()
        }
        .sheet(isPresented: $showingCredits) {
            Text("This app was brought to you by Hacking with Swift")
            Text("This app was brought to you by Hacking with Swift")
//                .presentationDetents([.medium, .large])
//                .presentationDragIndicator(.hidden)
//                .presentationDetents([.fraction(0.30)])
//                .presentationDetents([.height(300)])
                .presentationDetents(Set(heights))
        }
    }
}

#Preview {
    BottomSheetView()
}
