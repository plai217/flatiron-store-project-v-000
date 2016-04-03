class ChangeUserCurrentCartDefault < ActiveRecord::Migration
  def change
    change_column :users, :current_cart, :integer, :default => nil
  end
end
