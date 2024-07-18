//
//  DictionaryOperations.swift
//  HashingAndCollections
//
//  Created by Samir on 18.07.2024.
//

import Foundation

// Создание словаря, где ключами будут строки (названия городов), а значениями — целые числа (их население)
var cityPopulation: [String: Int] = ["New York": 8419000, "Los Angeles": 3980400, "Chicago": 2716000]

// Добавление нескольких пар ключ-значение в словарь
func addCities() {
    cityPopulation["Houston"] = 2328000
    cityPopulation["Phoenix"] = 1690000
}

// Удаление одной пары ключ-значение
func removeCity() {
    cityPopulation.removeValue(forKey: "Chicago")
}

// Обновление значения для одного из ключей

func updateCityPopulation() {
    cityPopulation["Los Angeles"] = 4000000
}

// Получение значения для одного из ключей
func getCityPopulation(for city: String) -> Int? {
    return cityPopulation[city]
}


