//
//  TabScreen.swift
//  NewWorld
//
//  Created by Innocrux on 20/08/24.
//

import SwiftUI

struct TabScreen: View {
    @State var selectedTab = "Home"
    var body: some View {
        ZStack{
            TabView(selection: $selectedTab){
                
                StickyHeaderScreen()
                    .tabItem {
                        Image(systemName: "music.note.house")
                        Text("Home")
                    }
                    .tag("Home")
                
                ProfileStickyHeader()
                    .tabItem {
                        Image(systemName: "tray.full")
                        Text("Library")
                    }
                    .tag("Library")
                
                ProfileStickyHeader()
                    .tabItem {
                        Image(systemName: "person.crop.circle.fill")
                        Text("Account")
                    }
                    .tag("Account")
            }
            .tint(.white)
        }
    }
}

#Preview {
    TabScreen()
}
