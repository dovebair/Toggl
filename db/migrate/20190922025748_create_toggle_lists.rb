class CreateToggleLists < ActiveRecord::Migration[5.2]
  def change
    create_table :toggle_lists do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
