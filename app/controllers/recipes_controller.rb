class RecipesController < ApplicationController
  before_action :find_recipe, except: [:index, :new, :create]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def edit
  end

  def create
    @recipe = Recipe.new(recipe_params)
    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created!' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unpocessable_entity }
      end
    end
  end

  def update
     respond_to do |format|
       if @recipe.update(recipe_params)
         format.html { redirect_to @recipe, notice: 'Recipe was successfully updated!' }
         format.json { render :show, status: :ok, location: @recipe }
       else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unpocessable_entity }
      end
    end
  end

  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_path, notice: 'Recipe was successfully destroyed!' }
      format.json {head :no_content }
    end
  end

  private 

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :description, :time, 
                                   :difficulty, :ingredient_count, :cuisine_id, :dish_types_id)
  end

end
