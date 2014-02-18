require 'spec_helper'

describe Spree::TaxonsController do
  render_views

  context 'with a visible taxon' do
    let(:taxon){ create :taxon, name: 'taxon test name'}

    it 'displays the visible taxon' do
      spree_get :show, id: taxon.to_param

      expect(response.body).to have_content taxon.name
    end
  end
end
