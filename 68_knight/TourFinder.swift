//
//  TourFinder.swift
//  SwiftCS
//
//  Created by Paul Serbanescu on 4/6/22.
//

import Foundation

struct TourFinder: CustomStringConvertible {
    var board: [[Int]] = []
    var sideLength: Int
    var solved: Bool
    
    init(_ n: Int) {
        self.solved = false
        
        self.sideLength = n
        
        for row in 0...self.sideLength + 3 {
            var subArray: [Int] = []
            for col in 0...self.sideLength + 3 {
                if ((row <= 1) || (row >= self.sideLength + 2) || (col <= 1) || (col >= self.sideLength + 2)) {
                    subArray.append(-1)
                } else {
                    subArray.append(0)
                }
            }
            self.board.append(subArray)
        }
    }
    
    mutating func findTour(_ x: Int, _ y: Int, _ moves: Int) {
        if (self.solved) {
            exit(0)
        }
        if (moves == self.sideLength * self.sideLength + 1) {
            self.solved = true
            print(self)
            return
        }
        if (self.board[x][y] != 0) {
            return
        }
        else {
            self.board[x][y] = moves
            print(self)
            
            self.findTour(x+1, y+2, moves+1)
            self.findTour(x+2, y+1, moves+1)
            self.findTour(x+2, y-1, moves+1)
            self.findTour(x+1, y-2, moves+1)
            self.findTour(x-1, y-2, moves+1)
            self.findTour(x-2, y-1, moves+1)
            self.findTour(x-2, y+1, moves+1)
            self.findTour(x-1, y+2, moves+1)
            
            self.board[x][y] = 0
            print(self)
        }
    }
    
    public var description: String {
        var retStr = "\u{001B}[2J"
        
        for i in 0...self.sideLength + 3 {
            for j in 0...self.sideLength + 3 {
                let num = String(format: "%3d", (self.board[j][i]))
                retStr = "\(retStr) \(num)"
            }
            retStr += "\n"
        }
        return retStr
    }
    
}
