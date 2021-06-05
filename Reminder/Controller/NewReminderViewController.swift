//
//  NewReminderViewController.swift
//  Reminder
//
//  Created by Haseeb Ahmed on 5/06/21.
//

import UIKit

class NewReminderViewController: UIViewController {
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var completedSwitch: UISwitch!
    @IBAction func saveButton(_ sender: UIButton) {
        let reminder = Reminder(title: titleTextField.text!, date: datePicker.date, isCompleted: completedSwitch.isOn)
        
        ReminderService.shared.create(reminder: reminder)
        navigationController!.popViewController(animated: true)
    }
    
    
}
