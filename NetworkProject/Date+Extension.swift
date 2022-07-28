//
//  Date+Extension.swift
//  NetworkProject
//
//  Created by RILLY on 27/07/2022.
//

import Foundation

extension Date {
    func formattedString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yy"
        return dateFormatter.string(from: self)
    }
}
