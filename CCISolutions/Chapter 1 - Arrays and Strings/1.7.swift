//
//  1.7.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 23/07/22.
//

import Foundation

// MARK: - CHAPETR 1: 1.7 Rotate Matrix

func rotate(matrix: inout [[Int]]) {
    
    guard !matrix.isEmpty, matrix.count == matrix[0].count else { return }
    var l = 0
    var r = matrix.count - 1
    
    while l < r {
        for i in 0..<(r-l) {
            let top = l
            let bottom = r
            
            // Save top Left
            let topLeft = matrix[top][l + i]
            
            // Replace top Left with bottom Left
            matrix[top][l + i] = matrix[bottom - i][l]
            
            // Replace bottom Left with bottom Right
            matrix[bottom - i][l] = matrix[bottom][r - i]
            
            // Replace bottom Right with top Right
            matrix[bottom][r - i] = matrix[top + i][r]
            
            // Replace top Right with top Left
            matrix[top + i][r] = topLeft
        }
        l += 1
        r -= 1
    }
}
//print(rotate(matrix: [[1, 2, 3], [4, 5, 6]]))
