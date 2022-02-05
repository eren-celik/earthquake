//
//  Date+Extension.swift
//  earthquake
//
//  Created by Eren  Çelik on 3.02.2022.
//

import UIKit

extension Date {
    func formatDate(_ format: String? = "yyyy-MM-dd") -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}
