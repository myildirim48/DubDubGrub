//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by YILDIRIM on 23.03.2023.
//

import SwiftUI

struct LocationDetailView: View {
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var body: some View {
        VStack(spacing: 16) {
            BannerImageView(imgString: "default-banner-asset")
            HStack {
                AddressView(addressString: "123 Main Street")
                Spacer()
            }
            .padding(.horizontal)
            
            DescriptionView(descriptionText: "This is a test description.This is a test description.This is a test description.This is a test description.This is a test description.")
            
            ZStack {
                Capsule()
                    .frame(height: 80)
                    .foregroundColor(Color(.secondarySystemBackground))
                HStack(spacing: 20) {
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                    }
                    
                    Link(destination: URL(string: "https://www.apple.com")!) {
                        LocationActionButton(color: .brandPrimary, imageName: "network")
                    }
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "phone.fill")
                    }
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "person.fill.checkmark")
                    }
                    
                }
            }
            .padding(.horizontal)
            
            Text("Who's Here?")
                .bold()
                .font(.title2)
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    FirstNameAvatarView(firstname: "Mami")
                    FirstNameAvatarView(firstname: "Mami")
                    FirstNameAvatarView(firstname: "Mami")
                    FirstNameAvatarView(firstname: "Mami")
                    FirstNameAvatarView(firstname: "Mami")
                    FirstNameAvatarView(firstname: "Mami")
                    FirstNameAvatarView(firstname: "Mami")
                    FirstNameAvatarView(firstname: "Mami")
                    FirstNameAvatarView(firstname: "Mami")
                    FirstNameAvatarView(firstname: "Mami")
                }
            }
            

            
            Spacer()
        }
        .navigationTitle("Location Name")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView()
        }
    }
}

struct LocationActionButton: View {
    
    var color: Color
    var imageName: String
    
    var body: some View {
        ZStack {
            Capsule()
                .frame(width: 60,height: 60)
                .foregroundColor(color)
            Image(systemName: imageName)
                .resizable()
                .foregroundColor(.white)
                .scaledToFit()
                .frame(width: 25,height: 25)
        }
    }
}
struct FirstNameAvatarView: View {
    var firstname: String
    
    var body: some View {
        VStack {
            AvatarView(size: 64)
            Text(firstname)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}

struct BannerImageView: View {
    
    var imgString: String
    
    var body: some View {
        Image(imgString)
            .resizable()
            .scaledToFill()
            .frame(height: 120)
    }
}

struct AddressView: View {

    var addressString: String
    
    var body: some View {
        Label(addressString, systemImage: "mappin.and.ellipse")
            .font(.caption)
            .foregroundColor(.secondary)
    }
}

struct DescriptionView: View {
    
    var descriptionText: String
    
    var body: some View {
        Text(descriptionText)
            .lineLimit(3)
            .frame(height: 70)
            .minimumScaleFactor(0.75)
            .padding(.horizontal)
    }
}
