# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

1000.times do |n|
  order = Order.create!(description: "Order-#{n}", price: Random.rand(1000..100_000))
  Random.rand(1..5).times do |m|
    line_item = LineItem.create!(description: "LineItem-#{m}", price: Random.rand(1..2), order:)
    Random.rand(1..5).times do |k|
      Reference.create!(description: "Reference-#{k}", line_item:)
    end
  end
end
