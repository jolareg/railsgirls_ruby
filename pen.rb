
class Pen
  def initialize(color)
    @color = color
  end

  def print_color
    puts "My color is #{@color}"
  end
end

pen1 = Pen.new("red")
pen2 = Pen.new("blue")


pen1.print_color
pen2.print_color
