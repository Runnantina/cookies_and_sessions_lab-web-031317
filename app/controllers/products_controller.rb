class ProductsController < ApplicationController

  def index
    @cart = cart
  end

  def add
    cart << params[:product] # where is :product coming from
    redirect_to products_path 
  end

end
