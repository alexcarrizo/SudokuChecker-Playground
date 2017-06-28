//
//  SudokuChecker.playground
//  SudokuChecker
//
//  Created by Alex Carrizo on 6/28/2017.
//  Copyright © 2017 Alex Carrizo. All rights reserved.
//

let goodInput = [
[9,1,4,5,8,3,6,7,2],
[5,3,8,6,2,7,9,1,4],
[6,2,7,1,9,4,3,5,8],
[8,7,3,4,5,1,2,6,9],
[4,6,5,2,7,9,8,3,1],
[2,9,1,8,3,6,5,4,7],
[1,8,6,9,4,5,7,2,3],
[3,5,2,7,1,8,4,9,6],
[7,4,9,3,6,2,1,8,5]
]

let badInput = [
[9,1,4,9,8,3,6,7,2],
[5,3,8,6,2,7,9,1,4],
[6,2,7,1,9,4,3,5,8],
[8,7,3,4,5,1,2,6,9],
[4,6,5,2,7,9,8,3,1],
[2,9,7,8,3,6,5,4,7],
[9,4,6,9,4,5,7,2,3],
[3,4,2,7,1,8,4,9,6],
[7,4,9,3,6,2,1,8,5]
]

func isValid(sudoku grid: [[Int]]) -> Bool {
    for row in grid {
        if row.reduce(0, +) != 45 { return false }
    }
    return true
}

print(isValid(sudoku: goodInput) ? "valid" : "invalid")
print(isValid(sudoku: badInput) ? "valid" : "invalid")

