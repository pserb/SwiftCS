//
//  Coin.swift
//  SwiftCS
//
//  Created by Paul Serbanescu on 4/6/22.
//

import Foundation

struct Coin: CustomStringConvertible {
    
    private var value: Double
    private var upFace: String
    private var name: String
    private var flipCtr: Int
    private var headsCtr: Int
    private var tailsCtr: Int
    private var bias: Double
    
    private let coins = [
        "penny" : 0.01,
        "nickel" : 0.05,
        "dime" : 0.10,
        "quarter" : 0.25,
        "dollar" : 1.00
    ]
    
    init() {
        self.upFace = "heads"
        self.bias = 0.5
        
        self.value = 0
        self.name = ""
        self.flipCtr = 0
        self.headsCtr = 0
        self.tailsCtr = 0
    }
    
    init(_ s: String) {
        self.init()
        self.name = s
        self.assignValue(self.name)
    }
    
    init(_ s: String, nowFace: String) {
        self.init(s)
        self.upFace = nowFace
    }
    
    mutating func assignValue(_ s: String) {
        self.value = self.coins[s]!
    }
    
    mutating func flip() -> String {
        let a = Double.random(in: 0...1)
        if (a > self.bias) {
            self.upFace = "tails"
            self.tailsCtr += 1
        } else {
            self.upFace = "heads"
            self.headsCtr += 1
        }
        return self.upFace
    }
    
    mutating func reset(_ s: String, d: Double) {
        self.upFace = s
        self.bias = d
    }
    
    mutating func equals(_ other: Coin) -> Bool {
        return self.upFace == other.upFace
    }
    
    public var description: String {
        return "\(self.name) \(self.upFace)"
    }
}
