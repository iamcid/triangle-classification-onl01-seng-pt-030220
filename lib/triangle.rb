class Triangle
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind 
    if @x == @y && @y == @z
      :equilateral 
    elsif @x == @y || @x == @z || @z == @y 
      :isosceles 
    elsif @x != @y && @x != @z && @y != @z 
      :scalene 
    else
      raise TriangleError
    end 
  end
  
  class TriangleError < StandardError
    
  end
  
end
