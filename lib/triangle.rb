class Triangle
  # write code here
attr_accessor :side1, :side2, :side3

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    triangle = :equilateral
  if @side1 > 0 && @side2 > 0 && @side3 > 0 && @side1+@side2 > @side3 && @side2 + @side3 > @side1 && @side1 + @side3 > @side2 #maybe a better way tp check the conditions
    if self.side1 == self.side2 && self.side2 == self.side3
      triangle
    elsif self.side1 == self.side2 || self.side2 == self.side3 || self.side3 == self.side1
      triangle = :isosceles
    else
      triangle = :scalene
    end
  else 
    raise TriangleError
  end
  triangle
 end
  


class TriangleError < StandardError
  def message
    puts "This is an invalid triangle because the sides are invalid"
 end
end

end
