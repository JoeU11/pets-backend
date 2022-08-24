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

  def update
    pet = Pet.find_by(id: params[:id])
    pet.name = params[:name] || pet.name
    pet.animal = params[:animal] || pet.animal
    pet.age = params[:age] || pet.age
    pet.save
    render json: pet.as_json
  end
end
