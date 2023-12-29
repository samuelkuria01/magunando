class BabyproductsController < ApplicationController
  before_action :set_babyproduct, only: %i[ show edit update destroy ]

  # GET /babyproducts or /babyproducts.json
  def index
    @babyproducts = Babyproduct.all
  end

  # GET /babyproducts/1 or /babyproducts/1.json
  def show
  end

  # GET /babyproducts/new
  def new
    @babyproduct = Babyproduct.new
  end

  # GET /babyproducts/1/edit
  def edit
  end

  # POST /babyproducts or /babyproducts.json
  def create
    @babyproduct = Babyproduct.new(babyproduct_params)

    respond_to do |format|
      if @babyproduct.save
        format.html { redirect_to babyproduct_url(@babyproduct), notice: "Babyproduct was successfully created." }
        format.json { render :show, status: :created, location: @babyproduct }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @babyproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /babyproducts/1 or /babyproducts/1.json
  def update
    respond_to do |format|
      if @babyproduct.update(babyproduct_params)
        format.html { redirect_to babyproduct_url(@babyproduct), notice: "Babyproduct was successfully updated." }
        format.json { render :show, status: :ok, location: @babyproduct }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @babyproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /babyproducts/1 or /babyproducts/1.json
  def destroy
    @babyproduct.destroy

    respond_to do |format|
      format.html { redirect_to babyproducts_url, notice: "Babyproduct was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_babyproduct
      @babyproduct = Babyproduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def babyproduct_params
      params.require(:babyproduct).permit(:name, :image, :price, :category)
    end
end
