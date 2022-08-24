class PetsController < ApplicationController
  def index
    pets = Pet.all
    render json: pets.as_json
  end

  def create
    pet = Pet.new(name: params[:name], animal: params[:animal], age: params[:age])
    pet.save
    render json: pet.as_json
  end
end
