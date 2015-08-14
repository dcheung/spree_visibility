Spree::Product.class_eval do

  add_search_scope :visible do
    where(visible: true)
  end

  add_search_scope :none do
    where(:id => nil).where("#{ self.table_name }.id IS NOT ?", nil)
  end
  
  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def product_params
      params.permit(:visible)
    end  
end
