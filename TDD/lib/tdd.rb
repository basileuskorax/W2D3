class Array
  def my_uniq
    result = Hash.new(0)
    self.each do |el|
      result[el] += 1
    end
    result.keys
  end

  def two_sum
    results = []
    self.each_with_index do |num1, idx1|
      self.each_with_index do |num2, idx2|
        if idx1 != idx2 &&
          idx2 > idx1
          if
            num1 + num2 == 0
            results << [idx1, idx2]
          end
        end
      end
    end
    results
  end

end

def my_transpose(matrix)
  transposed = Array.new(matrix.length) {Array.new}
  matrix.each_with_index do |row, idx1|
    row.each_with_index do |col, idx2|
      transposed[idx2] << col
    end
  end

  transposed
end

def pick_stocks(array)
  idx_min = array.index(array.min)
  idx_max = array.index(array.max)

 idx_max > idx_min ? [idx_min, idx_max] : []

end
