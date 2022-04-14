//
//  Queue.swift
//  SwiftCS
//
//  Created by Paul Serbanescu on 4/13/22.
//

import Foundation

protocol Queue {
    // generic type
    associatedtype E
    
    mutating func add(_ e: E) -> Bool
    mutating func remove() -> E
    mutating func peek() -> E
    mutating func isEmpty() -> Bool
}
