=begin
input: nested array (matrix)
output: rotated matrix

rules:
  - return the input matrix rotated 90 degrees clockwise

mm:
  - create a new matrix by inputting in each column backwards as input rows
  - iterate over the row space (number of columns)
    - iterate over the column space (number of rows)
=end

def rotate90(matrix)
  num_columns = matrix.first.size
  num_rows = matrix.size

  rotated_matrix = []
  0.upto(num_columns - 1).each do |j|
    rotated_row = []
    (num_rows - 1).downto(0).each do |i|
      rotated_row << matrix[i][j]
    end
    rotated_matrix << rotated_row
  end
  rotated_matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
