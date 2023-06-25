//
//  main.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 19/07/22.
//

import Foundation


//let six = Node(val: 4)
//let five = Node(val: 3, next: six)
//let four = Node(val: 5, next: five)
//let three = Node(val: 2, next: four)
//let two = Node(val: 7, next: three)
//let one = Node(val: 10, next: two)
//
//var resultHead = deleteMiddle(one)
//while resultHead != nil {
//    print(resultHead?.val as Any)
//    resultHead = resultHead?.next
//}

let tree = BinarySearchTree()
tree.insert(9)
tree.insert(4)
tree.insert(6)
tree.insert(20)
tree.insert(170)
tree.insert(15)
tree.insert(1)

print(tree)
