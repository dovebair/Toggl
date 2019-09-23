class ToggleItemsController < ApplicationController
  before_action :set_toggle_list

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
  private

  def set_toggle_list
    @toggle_list = ToggleList.find(params[:toggle_list_id])
  end

  def toggle_item_params
    params[:toggle_item].permit(:content)
  end

end
