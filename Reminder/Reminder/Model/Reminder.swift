//
//  Reminder.swift
//  Reminder
//
//  Created by Haseeb Ahmed on 29/05/21.
//

import Foundation

class Reminder{
    var title: String
    var date: Date
    var isCompleted: Bool

    
    init(title: String, date: Date, isCompleted: Bool) {
        self.title = title
        self.date = date
        self.isCompleted = isCompleted
    }
}
