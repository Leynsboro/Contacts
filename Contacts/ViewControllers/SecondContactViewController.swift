//
//  SecondContactViewController.swift
//  Contacts
//
//  Created by Илья Гусаров on 13.05.2022.
//

import UIKit

class SecondContactViewController: UITableViewController {

    var persons: [Person] = []
        
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "second", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.section]
        
        content.text = indexPath.row == 0 ? person.phone : person.email
        
        cell.contentConfiguration = content
        
        return cell        
    }
}
