//
//  2.3.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 25/08/22.
//

import Foundation


// MARK: - CHAPETR 2: 2.3 Find Delete Middle Node

// if head of the node is given
func deleteMiddle(_ head: Node?) -> Node? {
    guard head?.next != nil else { return nil }
    var slow = head
    var fast = head?.next?.next
    while fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
    }
    slow?.next = slow?.next?.next
    return head
}

//Test in main
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


// if node to be deleted is given
func deleteMiddle(node: Node?) -> Bool {
    guard node != nil && node?.next != nil else { return false }
    let next = node?.next
    node?.next = next?.next
    return true
}
