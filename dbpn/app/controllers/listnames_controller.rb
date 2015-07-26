class ListnamesController < ApplicationController
  
  def index 
    @listnames = Listname.all 
  end

  def new
    @listnames = Listname.new
  end

  def show_animals
    @animals = Animal.where(:listname_id) == params[:id]
  end

end
