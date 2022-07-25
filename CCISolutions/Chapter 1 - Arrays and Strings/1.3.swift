//
//  1.3.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 23/07/22.
//

import Foundation

// MARK: - CHAPETR 1: 1.3 URLify

func urlify(str: String) -> String {
    var result = ""
    for ch in str {
        result.append(ch == " " ? "%20" : String(ch))
    }
    return result
}
//print(urlify(str: " ddjf fhf"))
