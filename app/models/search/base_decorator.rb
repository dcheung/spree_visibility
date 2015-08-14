require 'durable_decorator_rails'

Spree::Core::Search::Base.class_eval do

  protected
  durably_decorate :get_base_scope, mode: 'soft' do
    base_scope = original_get_base_scope.visible

    taxon && !taxon.visible ? base_scope.none : base_scope
  end
end
