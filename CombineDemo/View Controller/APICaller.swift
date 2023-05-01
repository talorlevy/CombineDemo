//
//  APICaller.swift
//  CombineDemo
//
//  Created by Talor Levy on 4/30/23.
//

import Combine
import Foundation

class APICaller {
    static let shared = APICaller()
    
    func fetchCompanies() -> Future<[String], Error> {
        return Future { promise in
            DispatchQueue.main.asyncAfter(deadline: .now()+3) {
                promise(.success(["Apple", "Google", "Microsoft", "Facebook"]))
            }
        }
    }
}
