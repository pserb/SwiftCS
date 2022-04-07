//
//  Stack.swift
//  SwiftCS
//
//  Created by Paul Serbanescu on 4/7/22.
//

import Foundation

struct Stack {
    fileprivate var array: [String] = []
    
    mutating func push(_ s: String) {
        self.array.append(s)
    }
    
    mutating func pop() -> String {
        return array.popLast()!
    }
    
    mutating func peek() -> String {
        return array.last!
    }
}
