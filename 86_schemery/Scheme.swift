//
//  Scheme.swift
//  SwiftCS
//
//  Created by Paul Serbanescu on 4/7/22.
//

import Foundation

//write own stack code

struct Scheme {
    mutating func evaluate(_ expr: String) -> String {
        var splitExpr = expr.split(separator: " ")
        var stack = Stack()
        
        for i in stride(from:splitExpr.count-1, to: -1, by: -1) {
            stack.push(String(splitExpr[i]))
            if (stack.peek() == "(") {
                stack.pop()
                
                let op: String = stack.pop()
                var res: Int = Int(stack.pop())!
                
                while (stack.peek() != ")") {
                    if (op == "+") {
                        res += Int(stack.pop())!
                    } else if (op == "-") {
                        res -= Int(stack.pop())!
                    } else if (op == "*") {
                        res *= Int(stack.pop())!
                    }
                }
                
                stack.pop()
                stack.push(String(res))
            }
        }
        return stack.pop()
    }
}
