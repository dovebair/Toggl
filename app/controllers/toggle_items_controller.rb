class ToggleItemsController < ApplicationController
  before_action :set_toggle_list
  before_action :set_toggle_item, except: [:create]

def create
  @toggle_item = @toggle_list.toggle_items.create(toggle_item_params)
  redirect_to @toggle_list
end

def destroy
  @toggle_item = @toggle_list.toggle_items.find(params[:id])
  if @toggle_item.destroy
    flash[:success] = "Toggle List item was deleted."
  else
    flash[:error] = "Toggle List item could not be deleted."
  end
  redirect_to @toggle_list 
end

def complete
  @toggle_item.update_attribute(:completed_at, Time.now)
  redirect_to @toggle_list, notice: "Toggle item completed."
end

def uncomplete
  @toggle_item.update_attribute(:completed_at, nil)
  redirect_to @toggle_list, notice: "Toggle item not completed."
end

private

def set_toggle_list
  @toggle_list = ToggleList.find(params[:toggle_list_id])
end

def set_toggle_item
  @toggle_item = @toggle_list.toggle_items.find(params[:id])
end

def toggle_item_params
  params[:toggle_item].permit(:content)
end

end
