class DishTypesController < ApplicationController
  before_action :find_dish_type, except: [:index, :new, :create]

  def index
    @dish_types = DishType.all
  end

  def show
  end

  def new
    @dish_type = DishType.new
  end

  def edit
  end

  def create
    @dish_type = DishType.new(dish_type_params)
    respond_to do |format|
      if @dish_type.save
        format.html { redirect_to @dish_type, notice: 'Dish Type was successfully created!' }
        format.json { render :show, status: :created, location: @dish_type }
      else
        format.html { render :new }
        format.json { render json: @dish_type.errors, status: :unpocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @dish_type.update(dish_type_params)
        format.html { redirect_to @dish_type, notice: 'Dish Type was successfully updated!' }
        format.json { render :show, status: :ok, location: @dish_type }
      else
        format.html { render :edit }
        format.json { render json: @dish_type.errors, status: :unpocessable_entity }
      end
    end
  end

  def destroy
    @dish_type.destroy
    respond_to do |format|
      format.html { redirect_to dish_types_path, notice: 'Dish Type was successfully destroyed!' }
      format.json { head :no_content }
    end
  end

  private

  def find_dish_type
    @dish_type = DishType.find(params[:id])
  end

  def dish_type_params
    params.require(:dish_type).permit(:title, :description)
  end

end
