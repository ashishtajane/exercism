class Squares
  VERSION = 2

  def initialize i
    @num = i
  end

  def square_of_sum
    (@num * (@num + 1) / 2) ** 2
  end

  def sum_of_squares
    (0..@num).inject{ |sum, i| sum + i**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
