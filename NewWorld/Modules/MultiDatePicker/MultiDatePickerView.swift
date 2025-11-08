//
//  MultiDatePickerView.swift
//  NewWorld
//
//  Created by Innocrux on 30/07/24.
//

import SwiftUI

struct MultiDatePickerView: View {
    @State private var dates: Set<DateComponents> = []
    var body: some View {
        VStack {
            MultiDatePicker("Selected Dates", selection: $dates)
                .fixedSize()
        }
        .padding(.horizontal, 15)
    }
}

#Preview {
    MultiDatePickerView()
}
