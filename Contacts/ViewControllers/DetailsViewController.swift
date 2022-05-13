//
//  DetailsViewController.swift
//  Contacts
//
//  Created by Илья Гусаров on 13.05.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }


}
