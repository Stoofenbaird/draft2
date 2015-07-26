class BreedsController < ApplicationController
  def index
    @breeds = Breed.all
  end

  def show_animals
    @animals = Animal.where(:breed_id) == params[:id]
  end
end
