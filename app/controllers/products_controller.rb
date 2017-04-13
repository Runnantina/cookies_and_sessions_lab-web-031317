class ProductsController < ApplicationController

  def index
    @cart = cart
  end

  def add
    cart << params[:product]
    # where is :product coming from?
    # params is the user input or from URL, therefore :product is coming from the input of the form in view file:
    # <input type="text" name="product">
    redirect_to products_path
  end

end
