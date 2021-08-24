# add methods to class Customer

class Customer
end

# to make all below possible

customer = Customer.new
customer.all # [{ name: "ala", age: 30 }]
customer.add({ name: "maria", age: 55 })
customer.add({ name: "maria", age: 55 })
customer.all # [{ name: "ala", age: 30 }, { name: "maria", age: 55 }, { name: "maria", age: 55 }]
customer.remove_by_name("maria")
customer.all # [{ name: "ala", age: 30 }, { name: "maria", age: 55 }]
customer.change_age_for_user(name: 'maria', age: 44)
customer.all # [{ name: "ala", age: 30 }, { name: "maria", age: 44 }]

# HINT: use attr_accessor
