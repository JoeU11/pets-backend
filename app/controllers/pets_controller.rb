class PetsController < ApplicationController
  def index
    pets = Pet.all
    render json: pets.as_json
  end
end