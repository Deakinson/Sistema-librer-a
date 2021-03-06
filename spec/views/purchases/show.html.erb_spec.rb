require 'rails_helper'

RSpec.describe "purchases/show", type: :view do
  before(:each) do
    @purchase = assign(:purchase, Purchase.create!(
      :product_barcode => 2,
      :provider_rut => 3,
      :amount => 4,
      :price => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
