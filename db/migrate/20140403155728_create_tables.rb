class CreateTables < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.column :name, :string
      t.column :content, :text
      t.column :created_by, :string
      t.timestamps
    end

    create_table  :tags do |t|
      t.column :name, :string
    end

    create_table :recipes_tags do |t|
      t.column :recipe_id, :int
      t.column :tag_id, :int
    end
  end
end
