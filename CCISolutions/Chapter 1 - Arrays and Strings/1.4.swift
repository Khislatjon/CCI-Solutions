//
//  1.4.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 23/07/22.
//

import Foundation

// MARK: - CHAPETR 1: 1.4 Palindrome Permutation

func isPalindromePermutation(str: String) -> Bool {
    let pureStr = String(str.unicodeScalars.filter(CharacterSet.letters.contains)).lowercased()
    var dict = [Character: Int]()
    var numberOfOddLetters = 0
    
    for ch in pureStr {
        dict[ch, default: 0] += 1
    }
    for value in dict.values {
        if value % 2 == 1 {
            numberOfOddLetters += 1
        }
    }
    return numberOfOddLetters < 2
}
//print(isPalindromePermutation(str: " dedejd TEYE 8737888&^% djt"))
