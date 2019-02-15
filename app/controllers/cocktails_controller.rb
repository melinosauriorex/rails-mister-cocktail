class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :update, :destroy]

  def index
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
  end

  def show
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to root_path
    else
      render :index
    end
  end



  def update
    @cocktail.update(cocktail_params)
    redirect_to @cocktails
  end

  def destroy
    @cocktail.destroy
    redirect_to root_path
  end

private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
