class LineItem < ApplicationRecord
  belongs_to :order

  has_many :references
end
