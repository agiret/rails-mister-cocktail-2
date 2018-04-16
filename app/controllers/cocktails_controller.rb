class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = @cocktail.doses
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    # respond_to do |format|
      if @cocktail.save
        # format.html { redirect_to @cocktail, notice: 'cocktail was successfully created.' }
        # format.json { render :show, status: :created, location: @cocktail }
        redirect_to @cocktail # ou root_path mais rectif pour rake
      else
        # format.html { render :new }
        # format.json { render json: @cocktail.errors, status: :unprocessable_entity }
        render :new
      end
    # end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
