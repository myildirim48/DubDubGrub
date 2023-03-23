//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by YILDIRIM on 23.03.2023.
//

import SwiftUI


struct AppTabView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                        
                }
                
            LocationListView()
                .tabItem {
                    Label("Locations", systemImage: "building")
                }
            
            NavigationView {
                ProfileView()

            }                    .tabItem {
                Label("Profile", systemImage: "person")
                    
            }
        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
