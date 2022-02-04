//
//  HomeViewController+Events.swift
//  earthquake
//
//  Created by Eren  Çelik on 3.02.2022.
//

import UIKit

extension HomeViewController {
    
    @objc
    func openCalendar() {
        if self.view.subviews.contains(where: { $0 is UIDatePicker }) {
             self.datePicker?.removeFromSuperview()
         } else {
             datePicker = nil
             setupDatePicker()
         }
    }
    
    private func setupDatePicker() {
        let picker = datePicker ?? UIDatePicker()
        picker.datePickerMode = .date
        picker.addTarget(self, action: #selector(dueDateChanged(sender:)),
                         for: .valueChanged)
        let size = self.view.frame.size
        picker.frame = CGRect(x: 0.0,
                              y: size.height - 200,
                              width: size.width,
                              height: 200)
        picker.backgroundColor = UIColor.white
        self.datePicker = picker
        self.view.addSubview(self.datePicker!)
    }
    
    @objc
    private func dueDateChanged(sender: UIDatePicker) {
        presenter.load(date: sender.date.formatDate(), limit: 10)
    }
}


