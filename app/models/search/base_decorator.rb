Spree::Core::Search::Base.class_eval do

  protected
  durably_decorate :get_base_scope, mode: 'strict' do |text|
    base_scope = original_get_base_scope.visible

    taxon && !taxon.visible ? base_scope.none : base_scope
  end
end
