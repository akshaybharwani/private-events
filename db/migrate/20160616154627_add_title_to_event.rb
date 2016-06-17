class AddTitleToEvent < ActiveRecord::Migration
  def change
    add_column :events, :title, :string
    add_index  :events, :title
  end
end
