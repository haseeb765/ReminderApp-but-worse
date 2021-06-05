//
//  FavouriteReminderViewController.swift
//  Reminder
//
//  Created by Haseeb Ahmed on 5/06/21.
//

import UIKit

class FavouriteRemidnerViewController: UIViewController {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let favouritedReminder = ReminderService.shared.getFavs() {
            titleLabel.text = favouritedReminder.title
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd/MM/yy hh:mma"
            dateLabel.text = dateFormatter.string(from: favouritedReminder.date)
        }
    }
    
}
