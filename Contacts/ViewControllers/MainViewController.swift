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
        let persons = Person.getPersons()
        
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            guard let navVC = viewController as? UINavigationController else { return }
            if let firstVC = navVC.topViewController as? FirstContactViewController {
                firstVC.persons = persons
            } else if let secondVC = navVC.topViewController as? SecondContactViewController {
                secondVC.persons = persons
            }
        }
    }


}

