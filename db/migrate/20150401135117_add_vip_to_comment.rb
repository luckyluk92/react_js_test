class AddVipToComment < ActiveRecord::Migration
  def change
    add_column :comments, :vip, :boolean
  end
end
