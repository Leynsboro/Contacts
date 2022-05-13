//
//  FirstContactViewController.swift
//  Contacts
//
//  Created by Илья Гусаров on 13.05.2022.
//

import UIKit

class FirstContactViewController: UITableViewController {

    var persons: [Person] = []

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "first", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        detailsVC.person = person
    }

}
