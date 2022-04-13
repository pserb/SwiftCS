//
//  LLDeque.swift
//  SwiftCS
//
//  Created by Paul Serbanescu on 4/13/22.
//

import Foundation

struct ListDeque<E> : Deque {
    
    internal var list: [E] = []
    
    mutating func peekFirst() -> E {
        return list.first!
    }
    mutating func peekLast() -> E {
        return list.last!
    }
    
    mutating func addFirst(_ e: E) {
        list.insert(e, at: 0)
    }
    mutating func addLast(_ e: E) {
        list.append(e)
    }
    
    mutating func removeFirst() -> E {
        return list.removeFirst()
    }
    mutating func removeLast() -> E {
        return list.removeLast()
    }
    
//    mutating func contains(_ e: E) -> Bool {
//        return list.contains()
//    }
    
    mutating func size() -> Int {
        return list.count
    }
    
    mutating func isEmpty() -> Bool {
        return list.isEmpty
    }
}
