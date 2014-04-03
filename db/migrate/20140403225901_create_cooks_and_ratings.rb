class CreateCooksAndRatings < ActiveRecord::Migration
  def change
    create_table :cooks do |t|
      t.column :name, :string

      t.timestamps
    end

    create_table :ratings do |t|
      t.column :cook_id, :integer
      t.column :recipe_id, :integer
      t.column :rating, :integer

      t.timestamps
    end
  end
end
