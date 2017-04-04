class ReviewsController < ApplicationController

  before_action :set_brewery

  def create
    @review = Review.new(review_params)
    @review.brewery = @brewery
    if @review.save
      redirect_to brewery_path(@brewery)
    else
      render "breweries/show"
    end

  end

  private

  def set_brewery
    @brewery = Brewery.find(params[:brewery_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

end
