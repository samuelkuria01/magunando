class BevaragesproductsController < ApplicationController
  before_action :set_bevaragesproduct, only: %i[ show edit update destroy ]

  # GET /bevaragesproducts or /bevaragesproducts.json
  def index
    @bevaragesproducts = Bevaragesproduct.all
    render json: @bevaragesproducts, only: [:id, :name, :image, :price], methods: [:category]

  end

  # GET /bevaragesproducts/1 or /bevaragesproducts/1.json
  def show
  end

  # GET /bevaragesproducts/new
  def new
    @bevaragesproduct = Bevaragesproduct.new
   render json: @bevaragesproducts, only: [:id, :name, :image, :price], methods: [:category]

  end

  # GET /bevaragesproducts/1/edit
  def edit
  end

  # POST /bevaragesproducts or /bevaragesproducts.json
  def create
    @bevaragesproduct = Bevaragesproduct.new(bevaragesproduct_params)

    respond_to do |format|
      if @bevaragesproduct.save
        format.html { redirect_to bevaragesproduct_url(@bevaragesproduct), notice: "Bevaragesproduct was successfully created." }
        format.json { render :show, status: :created, location: @bevaragesproduct }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bevaragesproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bevaragesproducts/1 or /bevaragesproducts/1.json
  def update
    respond_to do |format|
      if @bevaragesproduct.update(bevaragesproduct_params)
        format.html { redirect_to bevaragesproduct_url(@bevaragesproduct), notice: "Bevaragesproduct was successfully updated." }
        format.json { render :show, status: :ok, location: @bevaragesproduct }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bevaragesproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bevaragesproducts/1 or /bevaragesproducts/1.json
  def destroy
    @bevaragesproduct.destroy

    respond_to do |format|
      format.html { redirect_to bevaragesproducts_url, notice: "Bevaragesproduct was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bevaragesproduct
      @bevaragesproduct = Bevaragesproduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bevaragesproduct_params
      params.require(:bevaragesproduct).permit(:name, :image, :price, :category)
    end
end
