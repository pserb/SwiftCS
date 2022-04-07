//
//  main.swift
//  SwiftCS
//
//  Created by Paul Serbanescu on 4/6/22.
//

import Foundation

// ======== 23_coin =========
//var coinDriver = CoinDriver()
//coinDriver.main()
// ==========================

// ======== 68_knight =========
//var tourFinder = TourFinder(6)
//tourFinder.findTour(2, 2, 1)
// ============================

// ============ 86_schemery  ============
var scheme = Scheme()

let foo1: String = "( + 4 3 )"
print(foo1)
print(scheme.evaluate(foo1))

let foo2: String = "( + 4 ( * 2 5 ) 3 )"
print("\n\(foo2)")
print(scheme.evaluate(foo2))

let foo3: String = "( + 4 ( * 2 5 ) 6 3 ( - 56 50 ) )"
print("\n\(foo3)")
print(scheme.evaluate(foo3))

let foo4: String = "( - 1 2 3 )"
print("\n\(foo4)")
print(scheme.evaluate(foo4))
// =======================================
