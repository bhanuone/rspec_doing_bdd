class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a, @b, @c = [a, b, c]
  end

  def equilateral?
    a == b && b == c
  end

  def isosceles?
    (a == b and b !=c ) or (a != b and b == c) or (a == c and b != c)
  end

  def invalid?
    a + b <= c or b + c <= a or a + c <= b
  end

  def type
    if invalid?
      return :invalid
    elsif equilateral?
      return :equilateral
    elsif isosceles?
      return :isosceles
    else
      return :scalene
    end
  end
end
