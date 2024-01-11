class ProductsController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    puts "Fetching data for category: #{params[:category_name]}"
    category_name = params[:category_name]
    if category_name.present?
      category = Category.find_by(name: category_name)
      products = category ? category.products : []
    else
      products = Product.all
    end

    respond_to do |format|
      format.html { render json: products }
      format.json { render json: { products: products } }
    end
  end



  def categories_with_products
    category_name = params[:category_name]
    product_id = params[:product_id]
  
    # Fetch the category and its associated products
    category = Category.find_by(name: category_name)
  
    if category
      if product_id.present?
        # If product_id is provided, fetch the specific product within the category
        product = category.products.find_by(id: product_id)
        
        if product
          render json: product, only: [:id, :name, :image, :price]
        else
          render json: { error: 'Product not found' }, status: :not_found
        end
      else
        # If product_id is not provided, render the category with its products
        render json: category, include: { products: { only: [:id, :name, :image, :price] } }
      end
    else
      render json: { error: 'Category not found' }, status: :not_found
    end
  end
  
  
  

def show
  if params[:category_name]
    categories = Category.all.includes(:products)
    render json: categories, include: { products: { only: [:id, :name, :image, :price] } }
  elsif params[:product_id]
    product = Product.find(params[:product_id])
    render json: product, only: [:id, :name, :image, :price]
  else
    render json: { error: 'Invalid request' }, status: :bad_request
  end
end



  # GET /category/new
  def new
    @category = Category.new
    render json:@category , only: [:id, :name, :image, :price, :second_image_url], methods: [:category]

  end

  private

  def set_category
    category_name = params[:category_name]&.downcase # Use the safe navigation operator (&.)
    @category = Category.find_by("LOWER(name) = ?", category_name)
  
    unless @category
      # Do not render anything here, just set an instance variable
      @category_not_found = true
    end
  end
  
end



