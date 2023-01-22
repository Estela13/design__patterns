//
//  HeroListViewModel.swift
//  DragonBallBase
//
//  Created by Pedro Martín on 16/1/23.
//

import Foundation

class HeroListViewModel: NSObject {
    
    override init() {
        
    }
    
    var updateUI: ((_ heroes: [HeroModel]) -> Void)?

    func fetchData() {
        
        let myToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InByaXZhdGUifQ.eyJpZGVudGlmeSI6IjEyMzlFNERBLTM3N0MtNERGMS1CRTEwLTY5QjVFODZDNzA4RSIsImVtYWlsIjoicG1nQHRlc3QuY29tIiwiZXhwaXJhdGlvbiI6NjQwOTIyMTEyMDB9.t-vay9I3gno6WHT0v7Tm7EJ4RPXZZjh3ZX6-nJEz33k"
        
        let apiClient = ApiClient(token: myToken)
        
        apiClient.getHeroes { [weak self] heroes, error in
            self?.updateUI?(heroes)
        }
        
    }
    
//    func login() {
//        // pmg@test.com / !Test1234
//
//        let myToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InByaXZhdGUifQ.eyJpZGVudGlmeSI6IjEyMzlFNERBLTM3N0MtNERGMS1CRTEwLTY5QjVFODZDNzA4RSIsImVtYWlsIjoicG1nQHRlc3QuY29tIiwiZXhwaXJhdGlvbiI6NjQwOTIyMTEyMDB9.t-vay9I3gno6WHT0v7Tm7EJ4RPXZZjh3ZX6-nJEz33k"
//
//        let apiClient = ApiClient(token: myToken)
//
//        apiClient.login(user: <#T##String#>, password: <#T##String#>, completion: <#T##(String?, Error?) -> Void#>)
//        }
//    }
    
}



