//
//  CertificateView.swift
//  NetworkProject
//
//  Created by RILLY on 24/07/2022.
//

import SwiftUI

struct CertificateView: View {
    
    let certificate: Certificate
    
    var body: some View {
        HStack (spacing: 16) {
            ZStack {
                Circle()
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
                Image(certificate.imageName)
                    .resizable()
                    .padding()
            }
            .frame(width: 80, height: 80)
            VStack (alignment: .leading, spacing: 8) {
                Text(certificate.courseTitle)
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("by \(certificate.teacherName)")
                    .fontWeight(.light)
            }
            Spacer()
            Text(certificate.completionDate.formattedString())
                .font(.callout)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity)
    }
}

struct CertificateView_Previews: PreviewProvider {
    static var previews: some View {
        CertificateView(certificate: Certificate.preview)
            .previewLayout(.sizeThatFits)
    }
}
