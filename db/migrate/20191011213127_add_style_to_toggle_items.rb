class AddStyleToToggleItems < ActiveRecord::Migration[5.2]
  def change
    add_column :toggle_items, :style, :string
  end
end
