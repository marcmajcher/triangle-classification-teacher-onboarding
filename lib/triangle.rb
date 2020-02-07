class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    sides = [@a, @b, @c].sort
    if (@a > 0 && @b > 0 && @c > 0) &&
       (sides[0] + sides[1] > sides[2])
      if @a == @b && @b == @c
        return :equilateral
      end
      if @a == @b || @b == @c || @c == @a
        return :isosceles
      end
      return :scalene
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "TRI AGAIN"
    end
  end
end
