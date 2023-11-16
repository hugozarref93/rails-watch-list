class ListsController < ApplicationController
  def index
    # Implement logic to retrieve all lists
    @lists = List.all
  end

  def show
    # Implement logic to retrieve a specific list by id
    @list = List.find(params[:id])
  end

  def new
    # Initialize a new empty list
    @list = List.new
  end

  def create
    # Create a new list with data from the form
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :description) # Adjust the permitted parameters as needed
  end
end
