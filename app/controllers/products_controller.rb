class ProductsController < ApplicationController
  
  def index
  	@products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end

  def new
  	@product = Product.new
  end

  def edit
  	@product = Product.find(params[:id])
  end
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end	

  def create
    @product = Product.new (product_params)
    @product.save
    redirect_to products_path
  end  

  def destroy
   	  @product = Product.find(params[:id])
   	  @product.destroy
   	  redirect_to products_path
   	end      	
end	
private
  def product_params
    params.require(:product).permit(:name, :description, :user_id)
  end
  
