class Exercise
  def find(matrix)
    @matrix = matrix
    max_area=0
    0.upto(matrix.size-1) do |row|
      0.upto(matrix[row].size-1) do |col|
        max_area=[find_max(row, col), max_area].max
      end
    end
    max_area
  end

  def find_max(start_r, start_c)
    [
      area_for_range(start_r, start_r , start_c, start_c + 1),
      area_for_range(start_r, start_r + 1, start_c, start_c ),
      @matrix[start_r][start_c] == 1 ? 1 : 0
    ].max
  end

  def area_for_range(row, max_row,col, max_col)
    return 0 if max_row >= @matrix.size || max_col >= @matrix[0].size
    sum = 0
    row.upto(max_row) do |r|
      col.upto(max_col) do |c|
        return 0 if (@matrix[r][c] == 0)
        sum += 1
      end
    end
    return [sum, area_for_range(row, max_row , col, max_col + 1),
     area_for_range(row, max_row +1 , col, max_col )].max
  end
end
