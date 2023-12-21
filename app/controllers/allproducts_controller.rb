class AllproductsController < ApplicationController
  before_action :set_allproduct, only: %i[ show edit update destroy ]

  # GET /allproducts or /allproducts.json
  def index
    @allproducts = Allproduct.all
    render json: @allproducts
  end

  # GET /allproducts/1 or /allproducts/1.json
  def show
  end

  # GET /allproducts/new
  def new
    @allproduct = Allproduct.new
    render json: @allproducts
  end

  # GET /allproducts/1/edit
  def edit
  end

  # POST /allproducts or /allproducts.json
  def create
    @allproduct = Allproduct.new(allproduct_params)

    respond_to do |format|
      if @allproduct.save
        format.html { redirect_to allproduct_url(@allproduct), notice: "Allproduct was successfully created." }
        format.json { render :show, status: :created, location: @allproduct }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @allproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allproducts/1 or /allproducts/1.json
  def update
    respond_to do |format|
      if @allproduct.update(allproduct_params)
        format.html { redirect_to allproduct_url(@allproduct), notice: "Allproduct was successfully updated." }
        format.json { render :show, status: :ok, location: @allproduct }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @allproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allproducts/1 or /allproducts/1.json
  def destroy
    @allproduct.destroy

    respond_to do |format|
      format.html { redirect_to allproducts_url, notice: "Allproduct was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allproduct
      @allproduct = Allproduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def allproduct_params
      params.require(:allproduct).permit(:name, :image, :price)
    end
end
