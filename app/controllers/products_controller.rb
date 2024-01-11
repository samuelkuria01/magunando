class ProductsController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    puts "Fetching data for category: #{params[:category_name]}"
    # ... existing code ...
  end

  def show
    product_id = params[:product_id].to_i

    # Ensure the category is found
    if @category
      # Simulate fetching product details from the database
      product = @category.products.find_by(id: product_id)

      if @category_not_found
        # Render a specific template for category not found
        Rails.logger.error("Category not found: #{params[:category_name]}")
        render 'category_not_found', status: :not_found
        
        return
      end

      if product
        render json: product
      else
        render json: { error: 'Product not found' }, status: :not_found
      end
    else
      render json: { error: 'Category not found' }, status: :not_found
    end
  end

  private

  def set_category
    category_name = params[:category_name].downcase # Convert to lowercase
    @category = Category.find_by("LOWER(name) = ?", category_name)
    
    unless @category
      # Do not render anything here, just set an instance variable
      @category_not_found = true
    end
  end
  
end


