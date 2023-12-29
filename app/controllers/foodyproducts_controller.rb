class FoodyproductsController < ApplicationController
  before_action :set_foodyproduct, only: %i[ show edit update destroy ]

  # GET /foodyproducts or /foodyproducts.json
  def index
    @foodyproducts = Foodyproduct.all
    render json: @foodyproducts, only: [:id, :name, :image, :price], methods: [:category]

  end

  # GET /foodyproducts/1 or /foodyproducts/1.json
  def show
  end

  # GET /foodyproducts/new
  def new
    @foodyproduct = Foodyproduct.new
    render json: @foodyproducts, only: [:id, :name, :image, :price], methods: [:category]

  end

  # GET /foodyproducts/1/edit
  def edit
  end

  # POST /foodyproducts or /foodyproducts.json
  def create
    @foodyproduct = Foodyproduct.new(foodyproduct_params)

    respond_to do |format|
      if @foodyproduct.save
        format.html { redirect_to foodyproduct_url(@foodyproduct), notice: "Foodyproduct was successfully created." }
        format.json { render :show, status: :created, location: @foodyproduct }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foodyproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodyproducts/1 or /foodyproducts/1.json
  def update
    respond_to do |format|
      if @foodyproduct.update(foodyproduct_params)
        format.html { redirect_to foodyproduct_url(@foodyproduct), notice: "Foodyproduct was successfully updated." }
        format.json { render :show, status: :ok, location: @foodyproduct }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foodyproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodyproducts/1 or /foodyproducts/1.json
  def destroy
    @foodyproduct.destroy

    respond_to do |format|
      format.html { redirect_to foodyproducts_url, notice: "Foodyproduct was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodyproduct
      @foodyproduct = Foodyproduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foodyproduct_params
      params.require(:foodyproduct).permit(:name, :image, :price, :category)
    end
end
