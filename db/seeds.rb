# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

1000.times do
  order = Order.create!(description: 'Order', price: Random.rand(1000..100_000))
  Random.rand(1..5).times do
    LineItem.create!(description: 'LineItem', price: 1, order:)
  end
end
