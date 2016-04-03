class StoreController < ApplicationController
  
  def index
    @cart = current_user.current_cart unless current_user.nil? || current_user.current_cart.nil?
    @categories = Category.all
    @items = Item.available_items
  end
end
