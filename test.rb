require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

# chef = Chef.find(2)
chef = Chef.new(first_name: "Juan", last_name: "Reyes", email: "juan@mail.com", phone: "52-54-70-06", birthday: Time.now) 
# chef = Chef.where( "first_name = ?", "juancho")
# Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará
assert chef[:first_name] == "Juan"
# assert chef[:last_name] == "Reyes"

puts "finished"
