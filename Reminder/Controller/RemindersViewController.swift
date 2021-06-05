//
//  RemindersViewController.swift
//  Reminder
//
//  Created by Haseeb Ahmed on 5/06/21.
//

import UIKit

class RemindersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableview: UITableView!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        ReminderService.shared.toggleCompleted(index: indexPath.row)
        tableview.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ReminderService.shared.getCount()
    }

    
    @IBAction func EditButtonDidPress(_ sender: UIBarButtonItem) {
        
        if tableview.isEditing{
            tableview.isEditing = false
            sender.title = "Edit"
        } else {
            tableview.isEditing = true
            sender.title = "Done"
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            ReminderService.shared.deleteReminder(index: indexPath.row)
            tableview.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReminderCell") as! ReminderCell
        
        let reminder = ReminderService.shared.getReminder(index: indexPath.row)
        
        cell.update(reminder: reminder)
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableview.reloadData()
    }
    
    
    
}
