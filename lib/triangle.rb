class Triangle
  attr_accessor :isosceles, :equilateral, :scalene

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind

    if illegal_triangle?
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif length1 == length2 && length2 == length3
    :equilateral
    elsif
      side1 == side2 || side2 == side3|| side1 == side3
      :isosceles
    else
      :scalene
    end
  end

  def illegal_triangle?
  end

  class TriangleError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end

end
