class Triangle
  attr_accessor :kind
  def initialize side1,side2,side3
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def kind 
    narr = [@side1,@side2,@side3]
    if narr.find {|side| side<=0}
      raise TriangleError
    elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      raise TriangleError
    elsif narr.uniq.length == 1
      return :equilateral
    elsif narr.uniq.length == 2
      return :isosceles
    elsif narr.uniq.length == 3
      return :scalene

    end

  end

  class TriangleError < StandardError
    
  end
end
