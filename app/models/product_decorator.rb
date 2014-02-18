Spree::Product.class_eval do
  attr_accessible :visible

  def self.visible
    where(visible: true)
  end
end
