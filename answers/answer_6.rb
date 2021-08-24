class Customer
  attr_accessor :all

  def initialize
    @all = [{ name: "ala", age: 30 }]
  end

  def add(customer)
    all.push(customer)
  end

  def remove_by_name(name)
    all.delete_at(index_of_element_to_remove(name))
  end

  def change_age_for_user(name:, age:)
    customer = find_customer_by_name(name)
    customer[:age] = age
  end

  private

  def index_of_element_to_remove(name)
    all.index(find_customer_by_name(name))
  end

  def find_customer_by_name(name)
    all.find { |customer| customer[:name] == name }
  end
end

customer = Customer.new
puts customer.all # [{ name: "ala", age: 30 }]
customer.add({ name: "maria", age: 55 })
customer.add({ name: "maria", age: 55 })
puts '----'
puts customer.all # [{ name: "ala", age: 30 }, { name: "maria", age: 55 }, { name: "maria", age: 55 }]
customer.remove_by_name("maria")
puts '----'
puts customer.all # [{ name: "ala", age: 30 }, { name: "maria", age: 55 }]
customer.change_age_for_user(name: 'maria', age: 44)
puts '----'
puts customer.all # [{ name: "ala", age: 30 }, { name: "maria", age: 44 }]
