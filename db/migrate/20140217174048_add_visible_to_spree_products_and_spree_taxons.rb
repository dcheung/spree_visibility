class AddVisibleToSpreeProductsAndSpreeTaxons < ActiveRecord::Migration
  def change
    add_column :spree_products, :visible, :boolean, default: true
    add_column :spree_taxons,   :visible, :boolean, default: true
  end
end
