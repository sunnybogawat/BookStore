class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :author_id
      t.float :price
      t.integer :quantity
      t.integer :location_id
      t.integer :created_by
      t.timestamps
    end
  end
end
