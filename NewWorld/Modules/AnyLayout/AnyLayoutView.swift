//
//  AnyLayoutView.swift
//  NewWorld
//
//  Created by Innocrux on 30/07/24.
//

import SwiftUI

struct AnyLayoutView: View {
    @State private var toggleLayout = false
    @State private var layoutType: LayoutType = .zStack
    var body: some View {
        NavigationStack {
            let layout = AnyLayout(layoutType.layout)
            ScrollView(.horizontal) {
                layout {
                    ForEach(MyColor.allColors, id: \.color) { myColor in
                        myColor.color
                            .frame(width: myColor.width, height: myColor.height)
                    }
                }
                .animation(.default, value: layoutType)
                .padding(.horizontal, 15)
                .navigationTitle("AnyLayout")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            withAnimation {
                                if layoutType.index < LayoutType.allCases.count - 1 {
                                    layoutType = LayoutType.allCases[layoutType.index + 1]
                                } else {
                                    layoutType = LayoutType.allCases[0]
                                }
                            }
                        } label: {
                            Image(systemName:"circle.grid.3x3.circle")
                                .imageScale(.large)
                            
                        }
                    }
                }
            }
        }
        
//       let layout = toggleLayout ?
//        AnyLayout(_HStackLayout()) :
//        AnyLayout(_VStackLayout(spacing: 10))
//        
//        layout {
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.black)
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.gray)
//            
//        }
//        .frame(width: 200, height: 200)
//        .padding(.horizontal, 15)
//        .onTapGesture {
//            withAnimation {
//                toggleLayout.toggle()
//            }
//        }
    }
}

#Preview {
    AnyLayoutView()
}

struct MyColor {
    var color: Color
    var width:CGFloat
    var height:CGFloat
    
    static var allColors: [MyColor] {
        [.init(color: .red, width: 60, height: 50),
         .init(color: .yellow, width: 80, height: 60),
         .init(color: .cyan, width: 100, height: 90),
         .init(color: .blue, width: 150, height: 150),
         .init(color: .green, width: 200, height: 200),
         .init(color: .orange, width: 300, height: 200)]
    }
}

enum LayoutType: Int, CaseIterable {
    case zStack, hStack, vStack
    
    var index: Int {
        LayoutType.allCases.firstIndex(where: {$0 == self})!
    }
    var layout: any Layout {
        switch self {
        case .zStack:
            return ZStackLayout()
        case .hStack:
            return HStackLayout()
        case .vStack:
            return VStackLayout()
        }
    }
}
