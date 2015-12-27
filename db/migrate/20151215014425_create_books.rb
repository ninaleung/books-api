class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :genre
      t.string :year

      t.timestamps null: false
    end
  end
end
