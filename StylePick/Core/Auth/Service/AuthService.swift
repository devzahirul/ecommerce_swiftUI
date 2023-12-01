//
//  AuthService.swift
//  StylePick
//
//  Created by Hologram1 on 11/24/23.
//

import Foundation
import Combine


protocol AuthService {
var currentUser: CurrentValueSubject<User?,Never> { get }
func login(email: String, password: String)
func logout()
}

class MockAuthService: AuthService {
    static let shared = MockAuthService()
    
    var currentUser: CurrentValueSubject<User?, Never> = .init(nil)
    
    func login(email: String, password: String) {
        print("DEBUG: \(email) password \(password)")
        currentUser.value = User.MOCK
        AppEnvironment.router().move(to: .userHome)
    }
    
    func logout() {
        currentUser.value = nil
         AppEnvironment.router().move(to: .home)
    }
}

let api1 = "https://api.usestoryteller.com/api/app/story/stories/default?ClientPlatform=Web&ClientVersion=8.5.0&x-storyteller-api-key=5aa177bc-998a-45a6-8b55-d6cc0d1f2053"
