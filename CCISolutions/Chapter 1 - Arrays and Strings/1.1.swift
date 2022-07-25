//
//  1.1.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 23/07/22.
//

import Foundation

// MARK: - CHAPETR 1: 1.1 Is Unique

func isUnique(str: String) -> Bool {
    var dict = [Character: Int]()
    for ch in str {
        if dict[ch] == nil {
            dict[ch] = 1
        } else {
            return false
        }
    }
    return true
}
//print(isUnique(str: "Xislat"))
