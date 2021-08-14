class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @session_item = SessionItem.new
  end
end
