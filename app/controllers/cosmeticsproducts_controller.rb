class CosmeticsproductsController < ApplicationController
  before_action :set_cosmeticsproduct, only: %i[ show edit update destroy ]

  # GET /cosmeticsproducts or /cosmeticsproducts.json
  def index
    @cosmeticsproducts = Cosmeticsproduct.all
  end

  # GET /cosmeticsproducts/1 or /cosmeticsproducts/1.json
  def show
  end

  # GET /cosmeticsproducts/new
  def new
    @cosmeticsproduct = Cosmeticsproduct.new
  end

  # GET /cosmeticsproducts/1/edit
  def edit
  end

  # POST /cosmeticsproducts or /cosmeticsproducts.json
  def create
    @cosmeticsproduct = Cosmeticsproduct.new(cosmeticsproduct_params)

    respond_to do |format|
      if @cosmeticsproduct.save
        format.html { redirect_to cosmeticsproduct_url(@cosmeticsproduct), notice: "Cosmeticsproduct was successfully created." }
        format.json { render :show, status: :created, location: @cosmeticsproduct }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cosmeticsproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cosmeticsproducts/1 or /cosmeticsproducts/1.json
  def update
    respond_to do |format|
      if @cosmeticsproduct.update(cosmeticsproduct_params)
        format.html { redirect_to cosmeticsproduct_url(@cosmeticsproduct), notice: "Cosmeticsproduct was successfully updated." }
        format.json { render :show, status: :ok, location: @cosmeticsproduct }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cosmeticsproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cosmeticsproducts/1 or /cosmeticsproducts/1.json
  def destroy
    @cosmeticsproduct.destroy

    respond_to do |format|
      format.html { redirect_to cosmeticsproducts_url, notice: "Cosmeticsproduct was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cosmeticsproduct
      @cosmeticsproduct = Cosmeticsproduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cosmeticsproduct_params
      params.require(:cosmeticsproduct).permit(:name, :image, :price, :category)
    end
end
