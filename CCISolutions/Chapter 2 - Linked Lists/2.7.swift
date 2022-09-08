//
//  2.7.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 31/08/22.
//

import Foundation

// MARK: - CHAPETR 2: 2.7 Intersection

func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    guard headA != nil && headB != nil else { return nil}
    var aNode = headA
    var bNode = headB
    var aNodeCount = 0
    var bNodeCount = 0
    
    while aNode != nil {
        aNode = aNode?.next
        aNodeCount += 1
    }
    
    while bNode != nil {
        bNode = bNode?.next
        bNodeCount += 1
    }
    
    guard aNode === bNode else { return nil }
    
    var i = 0
    aNode = headA
    bNode = headB
    
    if aNodeCount - bNodeCount > 0 {
        while i < aNodeCount - bNodeCount {
            aNode = aNode?.next
            i += 1
        }
    } else if bNodeCount - aNodeCount > 0 {
        while i < bNodeCount - aNodeCount {
            bNode = bNode?.next
            i += 1
        }
    }
    
    while aNode !== bNode {
        aNode = aNode?.next
        bNode = bNode?.next
        
        if aNode == nil || bNode == nil {
            return nil
        }
    }
    return aNode
}
