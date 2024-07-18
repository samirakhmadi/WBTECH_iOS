//
//  SetOperations.swift
//  HashingAndCollections
//
//  Created by Samir on 18.07.2024.
//

import Foundation

// Создание множества (set) из целых чисел
var numbersSet: Set<Int> = [1, 2, 3, 4, 5]

// Добавление нескольких элементов в множество
func addElementsToSet() {
    numbersSet.insert(6)
    numbersSet.insert(7)
}

// Удаление одного элемента
func removeElementFromSet() {
    numbersSet.remove(3)
}

// Проверка существования определенного элемента в множестве
func checkElementInSet() -> Bool {
    return numbersSet.contains(4)
}

// Операции объединения, пересечения и разности на множествах
func performSetOperations() -> (Set<Int>, Set<Int>, Set<Int>) {
    let anotherSet: Set<Int> = [4, 5, 6, 7, 8, 9]
    let unionSet = numbersSet.union(anotherSet)
    let intersectionSet = numbersSet.intersection(anotherSet)
    let differenceSet = numbersSet.subtracting(anotherSet)
    
    return (unionSet, intersectionSet, differenceSet)
}

