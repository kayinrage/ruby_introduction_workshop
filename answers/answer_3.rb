class WiseMan
  def self.seven
    7
  end

  def self.minus(number1, number2)
    number1 - number2
  end

  def multiply(number1, number2)
    number1 * number2
  end
end

puts WiseMan.seven # 7
puts WiseMan.minus(3,2) # 1
puts WiseMan.new.multiply(2, 4) # 8
