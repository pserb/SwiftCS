//
//  Driver.swift
//  SwiftCS
//
//  Created by Paul Serbanescu on 4/6/22.
//

import Foundation

struct CoinDriver {
    var coin = Coin("quarter", "heads")
    var other = Coin("quarter", "heads")
    
    mutating func main() {
        print(coin)
        print(other)
        print("\nAfter flipping...")
        coin.flip()
        other.flip()
        print(coin)
        print(other)
        print("Are equal? \(coin.equals(other))")
    }
}
