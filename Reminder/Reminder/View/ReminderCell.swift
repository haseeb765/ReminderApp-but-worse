//
//  ReminderCell.swift
//  Reminder
//
//  Created by Haseeb Ahmed on 5/06/21.
//

import UIKit

class ReminderCell: UITableViewCell {
    @IBOutlet weak var isCompletedView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    func update(reminder: Reminder) {
        titleLabel.text = reminder.title
        isCompletedView.layer.cornerRadius = isCompletedView.frame.size.width / 2.0
        isCompletedView.layer.borderColor = UIColor.lightGray.cgColor
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yy hh:mma"
        dateLabel.text = dateFormatter.string(from: reminder.date)
        
        if reminder.isCompleted {
            isCompletedView.backgroundColor = UIColor.green
            isCompletedView.layer.borderWidth = 0.0
        }else {
            isCompletedView.backgroundColor =
                UIColor.white
            isCompletedView.layer.borderColor = UIColor.lightGray.cgColor
            isCompletedView.layer.borderWidth = 2.0
        }
    }
}
