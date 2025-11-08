//
//  SideBarContent.swift
//  NewWorld
//
//  Created by Innocrux on 09/09/24.
//

import SwiftUI

struct SideBarContent: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "square.and.arrow.up.fill")
                    .resizable()
                    .renderingMode(.template)
                    .imageScale(.medium)
                    .frame(width: 24, height: 24)
            }
            
            Text("SafeAreaInset")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(.red)
            
            Button {
                
            } label: {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .imageScale(.small)
                    .frame(width: 24, height: 24)
            }
        }
    }
}

#Preview {
    SideBarContent()
}
