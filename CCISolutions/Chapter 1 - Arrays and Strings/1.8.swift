//
//  1.8.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 24/07/22.
//

import Foundation

// MARK: - CHAPETR 1: 1.8 Zero Matrix

func zeroMatrix(_ matrix: inout [[Int]]) -> [[Int]] {
    
    guard !matrix.isEmpty, matrix.count == matrix[0].count else { return matrix }
    
    var rows = [Int]()
    var columns = [Int]()
    
    for i in 0..<matrix.count {
        for j in 0..<matrix[i].count {
            if matrix[i][j] == 0 {
                rows.append(i)
                columns.append(j)
            }
        }
    }
    
    // Make rows zero
    for row in rows {
        matrix[row] = Array(repeating: 0, count: matrix[row].count)
    }
    
    // Make columns zero
    for column in columns {
        for row in 0..<matrix.count {
            matrix[row][column] = 0
        }
    }
    
    return matrix
}
