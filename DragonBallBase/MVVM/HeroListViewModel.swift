//
//  HeroListViewModel.swift
//  DragonBallBase
//
//  Created by Pedro Martín on 16/1/23.
//

import Foundation

//En el ViewMoldel no debermiamos tener nunca UIkit

class HeroListViewModel: NSObject {
    
    var updateUI: ((_ heroes: [HeroModel]) -> Void)? //Actualiza la lista de heroes
    
    override init() {

    }
    
    func fetchData() {
        
        let myToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InByaXZhdGUifQ.eyJpZGVudGlmeSI6IjczRDNFNTgzLUY1M0EtNEY3My1CNzc4LTFDNEEzN0FDREQ0OSIsImV4cGlyYXRpb24iOjY0MDkyMjExMjAwLCJlbWFpbCI6InN0ZWxhLjEzQGhvdG1haWwuZXMifQ.AMoqHNuNZi7VtNXb1wgVgICyvbD2MdrmLywbgKw4SDo"
        
        
        let apiClient = ApiClient(token: myToken)
        
        
        apiClient.getHeroes { [weak self] heroes, error in
            self?.updateUI?(heroes)
        }
    }
    
}

