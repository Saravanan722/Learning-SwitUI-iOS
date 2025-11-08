//
//  ChartsView.swift
//  NewWorld
//
//  Created by Innocrux on 30/07/24.
//

import SwiftUI
import Charts

struct ChartsView: View {
    @State private var weeksDays = Calendar.current.shortWeekdaySymbols
    @State private var sales = [1000, 4000, 1500, 10000, 2500, 20000, 1500]
    var body: some View {
//        Chart {
//            ForEach(weeksDays.indices, id: \.self) { index in
//                BarMark(x: .value("Days", weeksDays[index]), y: .value("Sales", sales[index]))
//                    .foregroundStyle(by: .value("Day", weeksDays[index]))
//                    .annotation {
//                        Text("$\(sales[index])")
//                    }
//            }
//        }
//        .padding(.horizontal, 15)
        
        Chart {
            ForEach(weeksDays.indices, id: \.self) { index in
                LineMark(x: .value("Days", weeksDays[index]), y: .value("Sales", sales[index]))
                    .foregroundStyle(by: .value("Day", weeksDays[index]))
                    .annotation {
                        Text("$\(sales[index])")
                    }
            }
        }
        .padding(.horizontal, 15)
    }
}

#Preview {
    ChartsView()
}
