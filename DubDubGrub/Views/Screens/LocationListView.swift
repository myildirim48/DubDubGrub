//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by YILDIRIM on 23.03.2023.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(0..<10){ item in
                    NavigationLink {
                        LocationDetailView()
                    } label: {
                        LocationCell()
                    }
                }
            }
            .navigationTitle("Group Spot")
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
