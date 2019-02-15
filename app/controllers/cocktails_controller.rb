class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]
  def index
    @cocktail = Cocktail.new
  end

  def show
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path
    else
      render :index
    end
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
