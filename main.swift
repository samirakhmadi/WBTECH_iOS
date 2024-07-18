//
//  main.swift
//  HashingAndCollections
//
//  Created by Samir on 18.07.2024.
//

import Foundation

func main() {
    // Пример использования функции хеширования
    let exampleString = "Hello, world!"
    print("Hash of '\(exampleString)': \(hashString(exampleString))")
    
    // Пример использования простой хеш-функции
    let exampleString2 = "Hello, world!"
    print("Simple hash of '\(exampleString2)': \(simpleHash(exampleString2))")
    
    // Пример работы с множеством (Set)
    addElementsToSet()
    removeElementFromSet()
    
    let containsFour = checkElementInSet()
    print("Set contains 4: \(containsFour)")
    
    let (unionSet, intersectionSet, differenceSet) = performSetOperations()
    print("Union of sets: \(unionSet)")
    print("Intersection of sets: \(intersectionSet)")
    print("Difference of sets: \(differenceSet)")
    
    // Пример работы со словарем (Dictionary)
    addCities()
    removeCity()
    updateCityPopulation()
    
    if let laPopulation = getCityPopulation(for: "Los Angeles") {
        print("Population of Los Angeles: \(laPopulation)")
    }
}

main()

