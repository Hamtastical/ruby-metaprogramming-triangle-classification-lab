class Triangle
  attr_accessor :sides #calculate the sides
  
  @sides = []
  
  def initialize (side1, side2, side3) #initializes all sides
    @sides = [side1, side2, side3] #sides = all the sides
    @sides.sort! #sort out the sides
  end
  
  def kind
    if @sides.any?{|side| side <= 0} || ((@sides[0] + @sides[1]) <= @sides[2]) #if any of the sides are less than 0 or not right, raises an error
      raise TriangleError
    elsif @sides.uniq.length == 1 #all equal mean equilaterual
      :equilateral
    elsif @sides.uniq.length == 2 #2 equal than isosceles
      :isosceles
    else
      :scalene #rest will be scalene
    end
  end
  
  class TriangleError < StandardError #this raises an error
    
  end
end
