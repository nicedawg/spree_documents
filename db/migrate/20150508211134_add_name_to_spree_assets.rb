class AddNameToSpreeAssets < ActiveRecord::Migration
  def change
    add_column :spree_assets, :name, :string
  end
end
