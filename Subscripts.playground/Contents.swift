//: Playground - noun: a place where people can play

import Cocoa

struct Matrix {
    
    let rows: Int, columns: Int
    
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        
        self.rows = rows
        self.columns = columns
        
        grid = Array(repeating: 0.0, count: rows * columns)
    
    } // init
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        
        return (row >= 0 && row < rows) && (column >= 0 && column < columns)
    
    } // indexIsValid
    
    subscript(row: Int, column: Int) -> Double {
        
        get {
            
            assert(indexIsValid(row: row, column: column), "Index out of range")
            
            return grid[(row * columns) + column]
            
        } // get
        
        set {
            
            assert(indexIsValid(row: row, column: column), "Index out of range")
            
            grid[(row * columns) + column] = newValue
            
        } // set
        
    } // subscript
    
} // Matrix

var matrix = Matrix(rows: 2, columns: 2)

matrix[0, 1] = 1.5
matrix[1, 0] = 3.2
