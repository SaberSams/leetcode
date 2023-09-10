# Pascal's Triangle Generator

This Ruby script generates Pascal's Triangle up to a given number of rows. Pascal's Triangle is a mathematical construct where each number is the sum of the two numbers directly above it.

## Function Description

```ruby
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
```

## Usage

To use this Pascal's Triangle generator, you can call the generate function, passing the desired number of rows as an argument. The function will return Pascal's Triangle as a 2D array.

```ruby
result = generate(5)
puts result
```

This will generate Pascal's Triangle with 5 rows and print the result.

## Algorithm

The generate function uses a recursive approach to build each row of Pascal's Triangle. It starts with the first row (which is always [1]) and iteratively generates each subsequent row by summing the adjacent elements from the previous row.
