class Triangle
  
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind 
    if @side_1 == @side_2 && @side_2 == @side_3
      :equilateral 
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_3 == @side_2 
      :isosceles 
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_3 != @side_3 
      :scalene 
    else
      raise TriangleError
    end 
  end
  
  class TriangleError < StandardError
    
  end
  
end
