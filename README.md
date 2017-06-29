# Sudoku Checker Playground

Swift playground for testing if an array of an array of Ints is a valid Sudoku

## Algorithm

Exits Loop at First Bad Array

[Click here to view source](https://github.com/alexcarrizo/SudokuChecker-Playground/blob/master/SudokuChecker.playground/Contents.swift)

```Swift
func isValid(sudoku grid: [[Int]]) -> Bool {
  for row in grid {
    if row.reduce(0, +) != 45 { return false }
  }
  return true
}
```

## Alternate Algorithm

Single line solution (not included in Playground)

```Swift
func isValid(sudoku grid: [[Int]]) -> Bool {
  return grid.flatMap { $0 }.reduce(0, +) == 405
}
```
