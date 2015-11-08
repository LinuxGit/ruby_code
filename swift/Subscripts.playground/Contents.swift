// Read-Only Subscripts
struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6]).")

// Subscript Overloading
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
    
    func indexIsValidForRow(row: Int, cloumn: Int) -> Bool {
        return row >= 0 && row < rows && cloumn >= 0 && cloumn < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValidForRow(row, cloumn: column), "Index Out of Range")
            return grid[(row * columns) + column]
        }
        
        set {
            assert(indexIsValidForRow(row, cloumn: column), "Index Out of Range")
            grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2
print(matrix.grid)

//matrix[2, 2] = 5