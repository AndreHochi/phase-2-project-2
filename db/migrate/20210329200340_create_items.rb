class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.string :ingredients
      t.integer :calories
      t.string :picture_url

      t.timestamps
    end
  end
end
