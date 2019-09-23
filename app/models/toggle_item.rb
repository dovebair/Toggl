class ToggleItem < ApplicationRecord
  belongs_to :toggle_list

def completed?
  !completed_at.blank?
end

def uncompleted?
  !uncompleted_at.blank?
end

end
