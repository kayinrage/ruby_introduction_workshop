class User
  def self.all
    [
      { name: "ala", age: 30 },
      { name: "marek", age: 70 },
      { name: "grzegorz", age: 22 },
      { name: "maria", age: 55 }
    ]
  end

  def self.find_all_by_age(min_age, max_age)
    all.select { |user| user[:age] >= min_age && user[:age] <= max_age }
  end

  def self.find_by_name(name)
    all.find { |user| user[:name] == name }
  end
end

puts User.all
puts "----"
puts User.find_all_by_age(20, 33) # [{ name: "ala", age: 30 }, { name: "grzegorz", age: 22 }]
puts "----"
puts User.find_by_name('marek') # { name: "marek", age: 70 }
