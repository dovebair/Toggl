class AddPushedAtToToggleItems < ActiveRecord::Migration[5.2]
  def change
    add_column :toggle_items, :completed_at, :datetime
  end
end
