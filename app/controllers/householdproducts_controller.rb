class HouseholdproductsController < ApplicationController
  before_action :set_householdproduct, only: %i[ show edit update destroy ]

  # GET /householdproducts or /householdproducts.json
  def index
    @householdproducts = Householdproduct.all
  end

  # GET /householdproducts/1 or /householdproducts/1.json
  def show
  end

  # GET /householdproducts/new
  def new
    @householdproduct = Householdproduct.new
  end

  # GET /householdproducts/1/edit
  def edit
  end

  # POST /householdproducts or /householdproducts.json
  def create
    @householdproduct = Householdproduct.new(householdproduct_params)

    respond_to do |format|
      if @householdproduct.save
        format.html { redirect_to householdproduct_url(@householdproduct), notice: "Householdproduct was successfully created." }
        format.json { render :show, status: :created, location: @householdproduct }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @householdproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /householdproducts/1 or /householdproducts/1.json
  def update
    respond_to do |format|
      if @householdproduct.update(householdproduct_params)
        format.html { redirect_to householdproduct_url(@householdproduct), notice: "Householdproduct was successfully updated." }
        format.json { render :show, status: :ok, location: @householdproduct }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @householdproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /householdproducts/1 or /householdproducts/1.json
  def destroy
    @householdproduct.destroy

    respond_to do |format|
      format.html { redirect_to householdproducts_url, notice: "Householdproduct was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_householdproduct
      @householdproduct = Householdproduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def householdproduct_params
      params.require(:householdproduct).permit(:name, :image, :price, :category)
    end
end
