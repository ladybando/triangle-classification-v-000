class Triangle
  attr_accessor :isosceles, :equilateral, :scalene

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind

  illegal_triangle?

    if @length1 == @length2 && @length2 == @length3 && @length1 == @length3
      :equilateral
    elsif
      @length1 == @length2 || @length2 == @length3|| @length1 == @length3
      :isosceles
    else
      :scalene
    end
  end

  def illegal_triangle?
    if @length1 == 0 && @length2 == 0 && @length3 == 0
    elsif @length1 <0 && @length2 < 0 && @length3 < 0
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
    def message
      "this is an illegal triangle!"
    end
  end

end
