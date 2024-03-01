# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.new({ first_name: 'joao', last_name: 'silva', address: 'rua jerico 193', phone: '999999999', email: 'joao@email.com', password: '123123' })
user.save!

10.times do
  product = Product.new({ name: 'Acessório', price: 15.00 , description: 'Acessório para celular', stock: 10, category: 'Acessórios', user_id:1 })
  product.save!
end

10.times do
  product = Product.new({ name: 'Iphone', price: 2500.00, description: 'Smartphone super caro', stock: 5, category: 'Smartphones', user_id:1 })
  product.save!
end

10.times do
  product = Product.new({ name: 'Notebook Gamer', price: 7600.00, description: 'Notebook para jogos', stock: 10, category: 'Notebooks', user_id:1 })
  product.save!
end

10.times do
  product = Product.new({ name: 'Cadeira Gamer', price: 1300, description: 'Cadeira super maneira para gamers', stock: 30, category: 'Cadeiras', user_id:1 })
  product.save!
end
