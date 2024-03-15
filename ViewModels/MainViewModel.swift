//
//  MainViewModel.swift
//  ToDoList
//
//  Created by Thanadon Boontawee on 8/3/2567 BE.
//

import Foundation
import FirebaseAuth

class MainViewModel: ObservableObject {
    @Published var currentUserId = ""
    
    private var handler: FIRAuthStateDidChangeListenerHandle?
    
    init() {
        handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    var isSignedIn: bool {
        return Auth.auth().currentUser != nil
    }
}
