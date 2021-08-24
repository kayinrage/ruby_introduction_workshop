# add methods to class User

class User
end

# to make all below possible

User.all
# [
#   { name: "ala", age: 30 },
#   { name: "marek", age: 70 },
#   { name: "grzegorz", age: 22 },
#   { name: "maria", age: 55 }
# ]
User.find_all_by_age(20, 33) # [{ name: "ala", age: 30 }, { name: "grzegorz", age: 22 }]
User.find_by_name('marek') # { name: "marek", age: 70 }
