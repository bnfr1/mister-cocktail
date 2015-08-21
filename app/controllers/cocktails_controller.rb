class CocktailsController < ApplicationController

  before_action :find_cocktail, only: [:show]
  def index
    @cocktails = Cocktail.all
  end

  def show
    @doses = Dose.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :picture)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
