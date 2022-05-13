//
//  Person.swift
//  Contacts
//
//  Created by Илья Гусаров on 13.05.2022.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let dataManager = DataManager()
        
        let namesData = dataManager.names
        let surnamesData = dataManager.surnames
        let emails = dataManager.emails
        let phones = dataManager.phones
        
        for index in 0...dataManager.names.count - 1 {
            persons.append(
                    Person(
                        name: namesData[namesData.index(namesData.startIndex,
                                                        offsetBy: index)],
                        surname: surnamesData[surnamesData.index(surnamesData.startIndex,                                   offsetBy: index)],
                        email: emails[emails.index(emails.startIndex, offsetBy: index)],
                        phone: phones[phones.index(phones.startIndex, offsetBy: index)]
                    )
                )
        }
        
        return persons
    }
}
