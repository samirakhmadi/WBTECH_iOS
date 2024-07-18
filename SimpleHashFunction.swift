//
//  SimpleHashFunction.swift
//  HashingAndCollections
//
//  Created by Samir on 18.07.2024.
//

import Foundation

// Простая хеш-функция для строк, которая использует алгоритм умножения и сложения

func simpleHash(_ input: String) -> Int {
    var hash = 0
    for char in input {
        hash = 31 &* hash &+ Int(char.asciiValue ?? 0)
    }
    return hash
}

