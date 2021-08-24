class Game
  def self.time(name:)
    if name == 'chess'
      30
    elsif name == 'risk'
      60
    else
      'I have no idea :)'
    end
  end
end

puts Game.time(name: 'chess') # 30
puts Game.time(name: 'risk') # 60
puts Game.time(name: 'any other string') # 'I have no idea :)'
