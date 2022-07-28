//
//  DetailCertificateView.swift
//  NetworkProject
//
//  Created by RILLY on 28/07/2022.
//

import SwiftUI

struct DetailCertificateView: View {
    
    let certificate: Certificate
    
    var body: some View {
        VStack (spacing: 16) {
            Image(certificate.imageName)
            Text(certificate.courseTitle)
                .font(.title)
                .fontWeight(.bold)
            Text(certificate.teacherName)
                .font(.title3)
                .fontWeight(.light)
        }
    }
}

struct DetailCertificateView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCertificateView(certificate: Certificate.preview)
    }
}
