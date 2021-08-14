class SessionItemsController < ApplicationController
  def create
    @session_item = SessionItem.new
    @product_id = Product.find(params[:product_id])
    @user_sessions = Session.where(user: current_user)
    @session = @user_sessions.last
    @session_item.product = @product_id
    @session_item.session = @session
    if @session_item.save!
      redirect_to root_path
    else
      render "products/show"
    end
  end
end
