//
//  ProfileView.swift
//  NetworkProject
//
//  Created by RILLY on 23/07/2022.
//

import SwiftUI

struct ProfileView: View {
    
    let pictureName: String
    let name: String
    let jobTitle: String
    
    var isFavourite = false
    
    var body: some View {
        HStack(alignment: .top) {
            Button {
                // code à exécuter
            } label: {
                Image(systemName: "bell.badge")
                    .symbolRenderingMode(.palette)
                    .font(.system(size: 28))
                    .foregroundStyle(.red, .gray.opacity(0.5))
            }
            Spacer()
            VStack {
                Image(pictureName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)
                Text(name)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(jobTitle)
                    .font(.subheadline)
                    .fontWeight(.light)
            }
            Spacer()
            Button {
                // code à exécuter
            } label: {
                Image(systemName: isFavourite ? "star.fill" : "star")
                    .font(.system(size: 28))
                    .foregroundColor(isFavourite ? .yellow : .gray.opacity(0.5))
            }
        }
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProfileView(pictureName: "user-picture-1", name: "Ridwane", jobTitle: "Software Engineer")
            ProfileView(pictureName: "user-picture-1", name: "Ridwane", jobTitle: "Software Engineer", isFavourite: true)
        }
        .previewLayout(.sizeThatFits)
    }
}
