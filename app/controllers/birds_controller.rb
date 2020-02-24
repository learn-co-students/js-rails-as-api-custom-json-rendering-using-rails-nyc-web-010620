class BirdsController < ApplicationController
  def index
    # @birds = Bird.all
    # render json: @birds

    # birds = Bird.all
    # render json: birds


    # birds = Bird.all
    # render json: birds, only: [:id, :name, :species]

    birds = Bird.all
    render json: birds, except: [:created_at, :updated_at]
  end

  def show
    # bird = Bird.find_by(id: params[:id])
    # render json: bird

    # bird = Bird.find_by(id: params[:id])
    # render json: {id: bird.id, name: bird.name, species: bird.species } 

    bird = Bird.find_by(id: params[:id])
    render json: bird.slice(:id, :name, :species)
  end
end