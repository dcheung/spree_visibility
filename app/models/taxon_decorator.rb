Spree::Taxon.class_eval do
  def self.visible
    where(visible: true)
  end
  
  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def taxon_params
      params.permit(:visible)
    end    
end
