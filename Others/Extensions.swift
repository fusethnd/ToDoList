//
//  Extensions.swift
//  ToDoList
//
//  Created by Thanadon Boontawee on 8/3/2567 BE.
//

import Foundation

extension Encodable {
    func asDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder.encode(self) else {
            return [:]
        }
        do {
            let json = tru JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
