//
//  LocationCell.swift
//  DubDubGrub
//
//  Created by YILDIRIM on 23.03.2023.
//

import SwiftUI

struct LocationCell: View {
    
    var body: some View {
        HStack {
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80)
                .clipShape(Circle())
                .padding(.vertical, 5)
            VStack(alignment: .leading) {
                Text("Test Location Name")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                HStack {
                    AvatarView(size: 32)
                    AvatarView(size: 32)
                    AvatarView(size: 32)
                    AvatarView(size: 32)
                    AvatarView(size: 32)
                }
            }.padding(.leading)
        }
    }
}

struct LocationCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationCell()
    }
}
