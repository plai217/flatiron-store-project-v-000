class CartsController < ApplicationController

  def show
    @cart = Cart.find(params[:id])
  end

  def checkout
    @cart = Cart.find(params[:id])
    @cart.update_inventory
    @cart.line_items.clear
    @cart.user.current_cart = nil
    redirect_to cart_path
  end

end
