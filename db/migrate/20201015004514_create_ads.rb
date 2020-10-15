class CreateAds < ActiveRecord::Migration[5.1]
  def change
    create_table :ads do |t|
      t.string :title
      t.string :description
      t.integer :m_category_id
      t.integer :d_category_id
      t.string :condition
      t.string :price

      t.timestamps
    end
  end
end
