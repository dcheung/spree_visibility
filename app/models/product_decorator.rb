Spree::Product.class_eval do
  attr_accessible :visible

  add_search_scope :visible do
    where(visible: true)
  end

  add_search_scope :none do
    where(:id => nil).where("#{ self.table_name }.id IS NOT ?", nil)
  end
end
