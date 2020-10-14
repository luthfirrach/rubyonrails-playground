class CreateDCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :d_categories do |t|
      t.string :name
      t.references :m_category, foreign_key: true

      t.timestamps
    end
  end
end
