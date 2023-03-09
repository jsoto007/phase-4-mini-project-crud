class SpicesController < ApplicationController

  #GET   /spices
  def index
    spice = Spice.all 
    render json: spice
  end 

  #POST /spices
  def create
    spice = Spice.create(spice_params)
    render json: spice, status: :created
  end 

  #PATCH /spices/:id
  def update
    spice = Spice.find_by(id: params[:id])
    spice.update(spice_params)
    render json: spice
  end

  def destroy
    spice = Spice.find_by(id: params[:id])
    spice.destroy 
    head :no_content
  end 



  private

  def spice_params
    params.permit(:title, :description, :image, :notes, :rating)

  end 



end
