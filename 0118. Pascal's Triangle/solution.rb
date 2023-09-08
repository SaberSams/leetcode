# Generates Pascal's Triangle up to a given number of rows.
#
# @param {Integer} num_rows - The number of rows to generate in Pascal's Triangle.
# @param {Integer[][]} rows - The 2D array containing the generated triangle rows (default is [[1]]).
# @return {Integer[][]} - Pascal's Triangle as a 2D array.
def generate(num_rows, rows = [[1]])
    row = rows.length() + 1
    return rows if row > num_rows
    if row > 2
        new_row = []
        for i in 0...row - 2
            new_row << rows[row - 2][i] + rows[row - 2][i + 1]
        end
        rows << [1, *new_row, 1]
    elsif row == 2
        rows = rows << [1,1]
    end

    return generate(num_rows, rows)
end
