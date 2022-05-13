//
//  ViewController.swift
//  Contacts
//
//  Created by Илья Гусаров on 13.05.2022.
//

import UIKit

class MainViewController: UITabBarController {
      
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }

    private func loadData() {
        let firstVC = viewControllers?.first as! FirstContactViewController
        let secondVC = viewControllers?.last as! SecondContactViewController
        
        let persons = Person.getPersons()
        firstVC.persons = persons
        secondVC.persons = persons
    }


}

