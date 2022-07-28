//
//  HomeView.swift
//  NetworkProject
//
//  Created by RILLY on 23/07/2022.
//

import SwiftUI

struct HomeView: View {
    
    let certificates = [
        Certificate(imageName: "swiftUI",
                    courseTitle: "Basics of SwiftUI",
                    teacherName: "Quentin",
                    completionDate: Date()),
        Certificate(imageName: "reactjs",
                    courseTitle: "ReactJS web",
                    teacherName: "Nina",
                    completionDate: Date()),
        Certificate(imageName: "kotlin",
                    courseTitle: "Basics of Kotlin",
                    teacherName: "Nico",
                    completionDate: Date())
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                ProfileView(pictureName: "user-picture-1", name: "Ridwane", jobTitle: "Développeur iOS")
                Divider()
                ScrollView {
                    ForEach(certificates) { certificate in
                        NavigationLink {
                            DetailCertificateView(certificate: certificate)
                        } label: {
                            CertificateView(certificate: certificate)
                                .foregroundColor(.primary)
                        }
                    }
                }
            }
            .navigationTitle("Profile")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
