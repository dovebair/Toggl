class ToggleList < ApplicationRecord
  has_many :toggle_items, :dependent => :destroy

  def to_s
    title
  end
end
