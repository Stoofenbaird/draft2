class AnimalsController < ApplicationController
  def index
    @animals = Animals.all
  end

  def show_animals
    @animals = Animal.where(:listname_id) == params[:id])
  end

  def show_individual
    @animal = animals.find(params[:id])
  end
end
