//
//  UserData.swift
//  InputLogin
//
//  Created by mac mini on 3/13/22.
//

import Foundation

struct UserData {
    let user = "User"
    let password = "Password"
    let data: Person
    
    static func getUserData() -> UserData {
        UserData(data: Person(
                    name: "Sayabek",
                    surname: "Nurmagambetov",
                    age: 29,
                    city: "Nur-Sultan",
                    hobby: "Football",
                    image: "myPhoto"
        ))}
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let city: String
    let hobby: String
    let image: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    
}
