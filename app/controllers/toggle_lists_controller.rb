class ToggleListsController < ApplicationController
  before_action :set_toggle_list, only: [:show, :edit, :update, :destroy]

  # GET /toggle_lists
  # GET /toggle_lists.json
  def index
    @toggle_lists = ToggleList.all
  end

  # GET /toggle_lists/1
  # GET /toggle_lists/1.json
  def show
  end

  # GET /toggle_lists/new
  def new
    @toggle_list = ToggleList.new
  end

  # GET /toggle_lists/1/edit
  def edit
  end

  # POST /toggle_lists
  # POST /toggle_lists.json
  def create
    @toggle_list = ToggleList.new(toggle_list_params)

    respond_to do |format|
      if @toggle_list.save
        format.html { redirect_to @toggle_list, notice: 'Toggle list was successfully created.' }
        format.json { render :show, status: :created, location: @toggle_list }
      else
        format.html { render :new }
        format.json { render json: @toggle_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toggle_lists/1
  # PATCH/PUT /toggle_lists/1.json
  def update
    respond_to do |format|
      if @toggle_list.update(toggle_list_params)
        format.html { redirect_to @toggle_list, notice: 'Toggle list was successfully updated.' }
        format.json { render :show, status: :ok, location: @toggle_list }
      else
        format.html { render :edit }
        format.json { render json: @toggle_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toggle_lists/1
  # DELETE /toggle_lists/1.json
  def destroy
    @toggle_list.destroy
    respond_to do |format|
      format.html { redirect_to toggle_lists_url, notice: 'Toggle list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toggle_list
      @toggle_list = ToggleList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toggle_list_params
      params.require(:toggle_list).permit(:title, :description)
    end
end
