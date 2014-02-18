require 'spec_helper'

describe Spree::ProductsController do
  render_views

  context 'with a visible product' do
    let(:product){ create :product }

    it 'displays the add to cart button as normal' do
      spree_get :show, id: product.to_param

      expect(response.body).to have_content 'Add To Cart'
    end
  end

  context 'with a hidden product' do
    let(:product){ create :product, visible: false }

    it 'displays a flass error message' do
      spree_get :show, id: product.to_param

      expect(flash[:error]).to be_true
    end
  end
end
