class ListnamesController < ApplicationController
  
  def index 
    @listnames = Listname.all 
  end

  def new
    @listnames = Listname.new
  end

  def create
    @listname = Listname.new(listname_params)

    respond_to do |format|
      if @listname.save
        format.html { redirect_to @listname, notice: "New name was successfully added." }
      else
        format.html { render :new }
      end
    end
  end

  def show_animals
    @animals = Animal.where(:listname_id) == params[:id]
  end

end
