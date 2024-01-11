classFreshfoodssController < ApplicationController
  before_action :set_foodyproduct, only: %i[ show edit update destroy ]

  # GET /foodyproducts or /foodyproducts.json
  def index
    @freshfoods =Freshfoods.all
    render json: @freshfoods, only: [:id, :name, :image, :price], methods: [:category]

  end

  # GET /foodyproducts/1 or /foodyproducts/1.json
  def show
  end

  # GET /foodyproducts/new
  def new
    @freshfoods =Freshfoods.new
    render json: @freshfoods, only: [:id, :name, :image, :price], methods: [:category]

  end

  # GET /foodyproducts/1/edit
  def edit
  end

  # POST /foodyproducts or /foodyproducts.json
  def create
    @freshfoods =Freshfoods.new(foodyproduct_params)

    respond_to do |format|
      if @freshfoods.save
        format.html { redirect_toFreshfoods_url(@freshfoods), notice: "Foodyproduct was successfully created." }
        format.json { render :show, status: :created, location: @freshfoods }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @freshfoods.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodyproducts/1 or /foodyproducts/1.json
  def update
    respond_to do |format|
      if @freshfoods.update(foodyproduct_params)
        format.html { redirect_toFreshfoods_url(@freshfoods), notice: "Foodyproduct was successfully updated." }
        format.json { render :show, status: :ok, location: @freshfoods }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @freshfoods.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodyproducts/1 or /foodyproducts/1.json
  def destroy
    @freshfoods.destroy

    respond_to do |format|
      format.html { redirect_toFreshfoodss_url, notice: "Foodyproduct was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodyproduct
      @freshfoods =Freshfoods.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    defFreshfoods_params
      params.require(:foodyproduct).permit(:name, :image, :price, :category)
    end
end
