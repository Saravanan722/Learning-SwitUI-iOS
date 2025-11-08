//
//  PresentingVestView.swift
//  NewWorld
//
//  Created by Innocrux on 31/07/24.
//

import SwiftUI

struct PresentingVestView: View {
    let users = (1...100).map { number in "User \(number)" }
    
    var body: some View {
        NavigationStack {
            List(users, id: \.self) { user in
                NavigationLink {
                    Text("Detail for \(user)")
                } label: {
                    Text(user)
                        .listRowSeparator(.hidden)
                        .iOS {$0.frame(width: 100, height: 0)}
                        .listRowSeparatorTint(.cyan)
                    
                }
                Text("Hello World")
                            .modifier(PrimaryLabel())
            }
            .listStyle(.plain)
            .listRowSpacing(40)
//            .lineSpacing(1000)
//            .listRowSeparator(.hidden)
//            .listRowSeparator(.visible, edges: .all)
//            .listSectionSeparator(.hidden)
//            .listSectionSeparatorTint(.brown, edges: .all)
            .navigationTitle("Select a user")
            .iOS {$0.padding(.horizontal, 15)}
        }
    }
}

#Preview {
    PresentingVestView()
}

struct PrimaryLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.black)
            .foregroundStyle(.white)
            .font(.largeTitle)
            .cornerRadius(10)
    }
}
