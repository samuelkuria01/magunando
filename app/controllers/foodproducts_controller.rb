class FoodproductsController < ApplicationController
  before_action :set_foodproduct, only: %i[ show edit update destroy ]

  # GET /foodproducts or /foodproducts.json
  def index
    @foodproducts = Foodproduct.all
    
  end

  # GET /foodproducts/1 or /foodproducts/1.json
  def show
  end

  # GET /foodproducts/new
  def new
    @foodproduct = Foodproduct.new
  end

  # GET /foodproducts/1/edit
  def edit
  end

  # POST /foodproducts or /foodproducts.json
  def create
    @foodproduct = Foodproduct.new(foodproduct_params)

    respond_to do |format|
      if @foodproduct.save
        format.html { redirect_to foodproduct_url(@foodproduct), notice: "Foodproduct was successfully created." }
        format.json { render :show, status: :created, location: @foodproduct }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foodproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodproducts/1 or /foodproducts/1.json
  def update
    respond_to do |format|
      if @foodproduct.update(foodproduct_params)
        format.html { redirect_to foodproduct_url(@foodproduct), notice: "Foodproduct was successfully updated." }
        format.json { render :show, status: :ok, location: @foodproduct }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foodproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodproducts/1 or /foodproducts/1.json
  def destroy
    @foodproduct.destroy

    respond_to do |format|
      format.html { redirect_to foodproducts_url, notice: "Foodproduct was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodproduct
      @foodproduct = Foodproduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foodproduct_params
      params.require(:foodproduct).permit(:name, :image, :price, :category)
    end
end
