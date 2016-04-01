class LineItemsController < ApplicationController

  def create
    
  end

  private

  def line_params
    params.require(:line_item)
  end
end
