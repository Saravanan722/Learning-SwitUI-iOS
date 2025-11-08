//
//  AnyLayoutOverView.swift
//  NewWorld
//
//  Created by Innocrux on 01/08/24.
//

import SwiftUI

struct AnyLayoutOverView: View {
    @State private var changeLayout = false
    var body: some View {
        NavigationStack {
            if changeLayout {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(MyColor.allColors, id: \.color) { myColor in
                            myColor.color
                                .frame(width: myColor.width, height: myColor.height)
                        }
                    }
                }
            } else {
                ZStack {
                    ForEach(MyColor.allColors, id: \.color) { myColor in
                        myColor.color
                            .frame(width: myColor.width, height: myColor.height)
                    }
                }
                .padding(.horizontal, 10)
                .navigationTitle("AnyLayout")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            withAnimation {
                                changeLayout.toggle()
                            }
                        } label: {
                            
                            Image(systemName: "circle.grid.2x2")
                                .imageScale(.large)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    AnyLayoutOverView()
}
