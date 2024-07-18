//
//  HashFunction.swift
//  HashingAndCollections
//
//  Created by Samir on 18.07.2024.
//

import Foundation

// Функция для получения хеша строки с использованием встроенной функции hash()
func hashString(_ input: String) -> Int {
    return input.hashValue
}

