//
//  Certificate.swift
//  NetworkProject
//
//  Created by RILLY on 26/07/2022.
//

import Foundation

struct Certificate: Identifiable {
    let id = UUID()
    let imageName: String
    let courseTitle: String
    let teacherName: String
    let completionDate: Date
}
