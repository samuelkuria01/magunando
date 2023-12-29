class VegesproductsController < ApplicationController
  before_action :set_vegesproduct, only: %i[ show edit update destroy ]

  # GET /vegesproducts or /vegesproducts.json
  def index
    @vegesproducts = Vegesproduct.all
    render json: @vegesproducts, only: [:id, :name, :image, :price], methods: [:category]

  end

  # GET /vegesproducts/1 or /vegesproducts/1.json
  def show
  end

  # GET /vegesproducts/new
  def new
    @vegesproduct = Vegesproduct.new
    render json: @vegesproducts, only: [:id, :name, :image, :price], methods: [:category]

  end

  # GET /vegesproducts/1/edit
  def edit
  end

  # POST /vegesproducts or /vegesproducts.json
  def create
    @vegesproduct = Vegesproduct.new(vegesproduct_params)

    respond_to do |format|
      if @vegesproduct.save
        format.html { redirect_to vegesproduct_url(@vegesproduct), notice: "Vegesproduct was successfully created." }
        format.json { render :show, status: :created, location: @vegesproduct }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vegesproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vegesproducts/1 or /vegesproducts/1.json
  def update
    respond_to do |format|
      if @vegesproduct.update(vegesproduct_params)
        format.html { redirect_to vegesproduct_url(@vegesproduct), notice: "Vegesproduct was successfully updated." }
        format.json { render :show, status: :ok, location: @vegesproduct }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vegesproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vegesproducts/1 or /vegesproducts/1.json
  def destroy
    @vegesproduct.destroy

    respond_to do |format|
      format.html { redirect_to vegesproducts_url, notice: "Vegesproduct was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vegesproduct
      @vegesproduct = Vegesproduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vegesproduct_params
      params.require(:vegesproduct).permit(:name, :image, :price, :category)
    end
end
