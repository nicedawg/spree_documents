class RemoveNameFromSpreeAssets < ActiveRecord::Migration
  def change
    remove_column :spree_assets, :name
  end
end
