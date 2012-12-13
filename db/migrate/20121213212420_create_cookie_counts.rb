class CreateCookieCounts < ActiveRecord::Migration
  def change
    create_table :cookie_counts do |t|
      t.integer :cookie_id
      t.integer :site_sale_id
      t.integer :quantity
      t.string :type

      t.timestamps
    end
  end
end
