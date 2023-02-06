class CreateLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :line_items do |t|
      t.integer :price
      t.string :description
      t.belongs_to :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
