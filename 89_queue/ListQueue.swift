//
//  ListQueue.swift
//  SwiftCS
//
//  Created by Paul Serbanescu on 4/13/22.
//

import Foundation

struct ListQueue<E> : Queue {
    
    internal var list: [E] = []
    
    mutating func add(_ e: E) -> Bool {
        list.append(e)
        return true
    }
    
    mutating func remove() -> E {
        return list.removeFirst()
    }
    
    mutating func peek() -> E {
        return list.first!
    }
    
    mutating func isEmpty() -> Bool {
        return list.isEmpty
    }
}
