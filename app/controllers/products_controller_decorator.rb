Spree::ProductsController.class_eval do
  before_filter :check_visibility, only: :show

  def check_visibility
    flash[:error] = Spree.t(:unavailable_product) unless @product.visible
  end
end
