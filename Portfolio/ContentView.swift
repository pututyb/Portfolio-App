//
//  ContentView.swift
//  Portfolio
//
//  Created by Putut Yusri Bahtiar on 07/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                AboutView()
                    .tag(0)
                    .tabItem {
                        Image(systemName: "heart")
                            .scaleEffect(selectedTab == 0 ? 1.2: 1.0)
                        Text("Interest")
                    }
                
                AboutView()
                    .tag(1)
                    .tabItem {
                        Image(systemName: "chart.bar.doc.horizontal")
                            .scaleEffect(selectedTab == 1 ? 1.2: 1.0)
                        Text("SKills")
                    }
                
                AboutView()
                    .tag(2)
                    .tabItem {
                        Image(systemName: "person")
                            .scaleEffect(selectedTab == 2 ? 1.2: 1.0)
                        Text("About")
                    }
                
                AboutView()
                    .tag(3)
                    .tabItem {
                        Image(systemName: "graduationcap")
                            .scaleEffect(selectedTab == 3 ? 1.2: 1.0)
                        Text("Education")
                    }
                
                ProjectsView()
                    .tag(4)
                    .tabItem {
                        Image(systemName: "iphone")
                            .scaleEffect(selectedTab == 4 ? 1.2: 0.5)
                        Text("Projects")
                    }
            }
            .onAppear() {
                UITabBar.appearance().unselectedItemTintColor = UIColor(Color("navbar"))
            }
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
