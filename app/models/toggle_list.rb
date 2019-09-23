class ToggleList < ApplicationRecord
  has_many :toggle_items, :dependent => :destroy
end
