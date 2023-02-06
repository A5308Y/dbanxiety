class Order < ApplicationRecord
  has_many :line_items

  def line_item_price_ruby
    line_items.sum(&:price)
  end

  def high_value_references_ruby
    line_items
      .select { |line_item| line_item.price == 2 }
      .flat_map { |line_item| line_item.references.map(&:description) }.join(', ')
  end

  def line_item_price_db
    line_items.sum(:price)
  end

  def high_value_references_db
    line_items
      .includes(:references)
      .where('price = 2')
      .pluck('references.description')
      .join(', ')
  end
end
