class PuppiesController < ApplicationController

  def index 
    pups = Pup.all
    render json: pups.as_json
  end 

  def create
    pup = Pup.new(
      name: params[:name],
      breed: params[:breed], 
      age: params[:age]
    )
    pup.save
    render json: pup.as_json
  end 
end
