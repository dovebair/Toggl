class CreateToggleItems < ActiveRecord::Migration[5.2]
  def change
    create_table :toggle_items do |t|
      t.string :content
      t.references :toggle_list, foreign_key: true

      t.timestamps
    end
  end
end
