//
//  Deque.swift
//  SwiftCS
//
//  Created by Paul Serbanescu on 4/13/22.
//

import Foundation

// protocol deque
protocol Deque {
    // generic type
    associatedtype E
    
    mutating func peekFirst() -> E
    mutating func peekLast() -> E
    
    mutating func addFirst(_ e: E)
    mutating func addLast(_ e: E)
    
    mutating func removeFirst() -> E
    mutating func removeLast() -> E
    
//    mutating func contains(_ e: E) -> Bool
    
    mutating func size() -> Int
    
    mutating func isEmpty() -> Bool
}
