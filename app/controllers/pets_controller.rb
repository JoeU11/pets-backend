class PetsController < ApplicationController
  def index
    pets = Pet.all
    render json: pets.as_json
  end

  def create
    pet = Pet.new(name: params[:name], animal: params[:animal], age: params[:age])
    if pet.save
      render json: pet.as_json
    else
      render json: {errors: pet.errors.full_messages }, status: 422
    end
  end

  def update
    pet = Pet.find_by(id: params[:id])
    pet.name = params[:name] || pet.name
    pet.animal = params[:animal] || pet.animal
    pet.age = params[:age] || pet.age
    pet.save
    render json: pet.as_json
  end

  def destroy
    pet = Pet.find_by(id: params[:id])
    pet.destroy
    render json: {message: "this pet has been removed"}    
  end
end
