//
//  AutoCodeData.swift
//  WBTECH_iOS
//
//  Created by Samir on 14.07.2024.
//

import Foundation

struct PhoneAuthData {
    var phoneNumber: String
    var code: String
    
    init(phoneNumber: String, code: String = "") {
        self.phoneNumber = phoneNumber
        self.code = code
    }
}


