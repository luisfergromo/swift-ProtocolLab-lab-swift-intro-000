//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//
class BankVault{

    let name: String
    let address: String
    var amount: Double = 0.0

    init(name: String, address: String) {
        self.name = name
        self.address = address
    }

}
protocol ProvideAccess {
    func allowEntryWithPassword(password:[Int]) -> Bool
}
extension BankVault:ProvideAccess{
    func allowEntryWithPassword(password:[Int]) -> Bool{
        var allowEntry = true
        if password.isEmpty{
            allowEntry = false
        }
        if password.count > 10{
            allowEntry = false
        }
        for (index,digit) in password.enumerated(){
            if index % 2 == 0{
                if digit % 2 != 0{
                    allowEntry = false
                }
            }
        }
        return allowEntry
    }
}







