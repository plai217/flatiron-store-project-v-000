class LineItemsController < ApplicationController

  def create
    if current_user.nil?
      redirect_to store_path, :flash => { :success => "Please sign in" }
    else
      current_user.current_cart = current_user.carts.create if current_user.current_cart.nil? 
      current_user.current_cart.add_item(params[:item_id]).save
      redirect_to cart_path(current_user.current_cart)
    end
  end


end
