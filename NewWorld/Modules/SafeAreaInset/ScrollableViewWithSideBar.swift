//
//  ScrollableViewWithSideBar.swift
//  NewWorld
//
//  Created by Innocrux on 09/09/24.
//

import SwiftUI

struct ScrollableViewWithSideBar: View {
    var body: some View {
        ScrollView {
            ScrolledContent()
        }
        .safeAreaInset(edge: .top, spacing: 0) {
            SideBarContent()
        }
    }
}

#Preview {
    ScrollableViewWithSideBar()
}
