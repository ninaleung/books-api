class AddDetailsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :details, :boolean
  end
end
