//
//  GeometryReaderExample.swift
//  NewWorld
//
//  Created by Innocrux on 10/09/24.
//

import SwiftUI

struct GeometryReaderExample: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Hello, World!")
                .frame(
                    width: geometry.frame(in: .global).width,
                    height: geometry.frame(in: .global).height
                ).background(Color.red)
            //                .frame(
            //                    width: geometry.size.width,
            //                    height: geometry.size.height
            //                ).background(Color.red)
            
//            Rectangle()
//                    .size(CGSize(width: geometry.size.width / 2, height: geometry.size.height / 2))
            
        }
    }
}

#Preview {
    GeometryReaderExample()
}
