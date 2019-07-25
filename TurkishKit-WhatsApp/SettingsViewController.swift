//
//  SettingsViewController.swift
//  TurkishKit-WhatsApp
//
//  Created by Nadin Tamer on 21.07.2019.
//  Copyright © 2019 Nadin Tamer. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var settingsArray = [["Starred Messages", "WhatsApp Web/Desktop"], ["Account", "Chats", "Notifications", "Data Storage and Usage"]]
    
    var imagesArray = [["starred", "web"], ["account", "chats", "notifications", "data"]]
    
    @IBOutlet weak var profileTableView: UITableView!
    @IBOutlet weak var settingsTableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == self.profileTableView {
            return 1
        } else {
            return settingsArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.profileTableView {
            return 1
        } else {
            return settingsArray[section].count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (tableView == self.profileTableView) {
            let cellIdentifier = "ProfileTableViewCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! ProfileTableViewCell
            
            cell.profileImage.image = UIImage(named: "profile")
            cell.nameLabel.text = "Nadin"
            cell.statusLabel.text = "life is a conundrum of esoterica"
            return cell
        } else {
            let cellIdentifier = "SettingsTableViewCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! SettingsTableViewCell
            
            cell.settingsImage.image = UIImage(named: imagesArray[indexPath.section][indexPath.row])
            cell.settingsLabel.text = settingsArray[indexPath.section][indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if tableView == self.settingsTableView {
            return 50
        }
        return 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        settingsTableView.dataSource = self
        settingsTableView.delegate = self
        
        profileTableView.dataSource = self
        profileTableView.delegate = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
