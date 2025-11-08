//
//  NavigationStackNavigationSplitView.swift
//  NewWorld
//
//  Created by Innocrux on 30/07/24.
//

import SwiftUI

struct NavigationStackNavigationSplitView: View {
    var body: some View {
        //        NavigationStack {
        //            List {
        //                ForEach(1...5, id: \.self) { index in
        //                    NavigationLink {
        //                        Text("Screen #\(index)")
        //                    } label: {
        //                        Image(systemName: "\(index).circle")
        //                        Text("Item Name")
        //                    }
        //                }
        //            }
        //            .navigationTitle("NavigationStack")
        //    }
        
        NavigationStack{
            List {
                NavigationLink(value: "Text Item") {
                    Text("Text Item")
                }
                NavigationLink(value: 100) {
                    Text("Integer Item")
                }
                NavigationLink(value: Color.black) {
                    Text("Color Item")
                }
            }
            .navigationTitle("NavigationStack")
            .navigationDestination(for: String.self) { item in
                Text("This is the detail view for \(item)")
            }
            .navigationDestination(for: Color.self) { item in
                item.clipShape(Circle())
            }
            
            .navigationDestination(for: Int.self) { item in
                Text("This is the detail view for Integer \(item)")
            }
        }
    }
}

#Preview {
    NavigationStackNavigationSplitView()
}
