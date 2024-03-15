//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by Thanadon Boontawee on 8/3/2567 BE.
//

import Foundation

struct ToDoListItem: Codable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createDate: TimeInterval
    var isDone: Bool
}
