class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_cart
    return Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
        cart = Cart.create(:cart_count=> 0)
    session[:cart_id] = cart.id
    return cart
  end
end
