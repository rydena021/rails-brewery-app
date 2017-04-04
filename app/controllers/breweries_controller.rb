class BreweriesController < ApplicationController

  before_action :find_brewery, only: [:show, :edit, :update, :destroy]

  def index
    @breweries = Brewery.all.order("name ASC")
  end

  def show
    @review = Review.new
  end

  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.new(brewery_params)

    if @brewery.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @brewery.update(brewery_params)
      redirect_to brewery_path(@brewery)
    else
      render 'edit'
    end
  end

  def destroy
    @brewery.destroy
    redirect_to root_path
  end

  private

  def brewery_params
    params.require(:brewery).permit(:name, :address, :description, :image_url)
  end

  def find_brewery
    @brewery = Brewery.find(params[:id])
  end

end

