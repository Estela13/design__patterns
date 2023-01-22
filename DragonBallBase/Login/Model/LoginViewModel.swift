//
//  LoginViewModel.swift
//  DragonBallBase
//
//  Created by Estela Bravo on 22/1/23.
//

import Foundation


class LoginViewModel: NSObject {

    
    override init() {
        
    }
    
    var getLogin: ((_ data: String)->Void)?
    
    func login(email: String, password: String, completion: @escaping (String) -> Void) {
        
        let email: String? = email
        let password: String? = password
        
        let myToken = "eyJraWQiOiJwcml2YXRlIiwidHlwIjoiSldUIiwiYWxnIjoiSFMyNTYifQ.eyJpZGVudGlmeSI6IjczRDNFNTgzLUY1M0EtNEY3My1CNzc4LTFDNEEzN0FDREQ0OSIsImVtYWlsIjoic3RlbGEuMTNAaG90bWFpbC5lcyIsImV4cGlyYXRpb24iOjY0MDkyMjExMjAwfQ.PFngb5Op99ETF_U9OnLGHwuCpeL5OzWd_hIxQNL3mtw"
        
        let apiClient = ApiClient(token: myToken)
        
        apiClient.login(user: email ?? "stela.13@hotmail.es", password: password ?? "pepitogrill0") { loginToken, error in
            
            debugPrint(error ?? "We got a valid token!")
            
            completion(loginToken ?? "Wrong email or password. Try again")
                }
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




