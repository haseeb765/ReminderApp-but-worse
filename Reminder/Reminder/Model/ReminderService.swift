//
//  ReminderService.swift
//  Reminder
//
//  Created by Haseeb Ahmed on 29/05/21.
//

import Foundation

class ReminderService {
    static let shared = ReminderService()
    private init() {}
    var reminders = [Reminder]()
    
    //create reminder
    func create(reminder: Reminder) {
        reminders.append(reminder)
    }
    
    //update remidner
    func update(reminder: Reminder, index: Int) {
        reminders[index] = reminder
    }
    
    //get number of reminders
    func getCount() -> Int {
        return reminders.count
    }
    
    //get a specific reminder
    func getReminder(index: Int) -> Reminder {
            return reminders[index]
    }
    
    //toggle reminder completion
    func toggleCompleted(index: Int) {
        let reminder = getReminder(index: index)
        reminder.isCompleted = !reminder.isCompleted
    }
    
    //get a list of reminders
    func getReminders() -> [Reminder] {
        return reminders
    }
    
    //delete a reminder
    func deleteReminder(index: Int) {
        reminders.remove(at: index)
    }
    
    func getFavs() -> Reminder? {
        return reminders.first
    }

}
