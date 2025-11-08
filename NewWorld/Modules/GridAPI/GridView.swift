//
//  GridView.swift
//  NewWorld
//
//  Created by Innocrux on 30/07/24.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        Grid {
            GridRow {
                Color.red
                Color.yellow
                    .gridCellColumns(2)
            }
            
            GridRow {
                Color.blue
                    .gridCellColumns(3)
            }
            GridRow {
                Color.orange
                Color.brown
                Color.green
            }
        }
    }
}

#Preview {
    GridView()
}
