//
//  User.swift
//  ToDoList
//
//  Created by Thanadon Boontawee on 8/3/2567 BE.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
