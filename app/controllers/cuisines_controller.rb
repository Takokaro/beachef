class CuisinesController < ApplicationController
  before_action :find_cuisine, except: [:index, :new, :create]

  def index
    @cuisines = Cuisine.all
  end

  def show
  end

  def new
    @cuisine = Cuisine.new
  end

  def edit
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)
    respond_to do |format|
      if @cuisine.save
        format.html { redirect_to @cuisine, notice: 'Cuisine was successfully created!' }
        format.json { render :show, status: :created, location: @cuisine }
      else
        format.html { render :new }
        format.json { render json: @cuisine.errors, status: :unpocessable_entity }
      end
    end
  end

  def update
     respond_to do |format|
       if @cuisine.update(cuisine_params)
         format.html { redirect_to @cuisine, notice: 'Cuisine was successfully updated!' }
         format.json { render :show, status: :ok, location: @cuisine }
       else
        format.html { render :edit }
        format.json { render json: @cuisine.errors, status: :unpocessable_entity }
      end
    end
  end

  def destroy
    @cuisine.destroy
    respond_to do |format|
      format.html { redirect_to cuisines_path, notice: 'Cuisine was successfully destroyed!' }
      format.json { head :no_content }
    end
  end

  private 

  def find_cuisine
    @cuisine = Cuisine.find(params[:id])
  end

  def cuisine_params
    params.require(:cuisine).permit(:title, :description)
  end

end
