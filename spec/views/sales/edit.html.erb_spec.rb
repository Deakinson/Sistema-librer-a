require 'rails_helper'

RSpec.describe "sales/edit", type: :view do
  before(:each) do
    @sale = assign(:sale, Sale.create!(
      :product_barcode => 1,
      :provider_rut => 1,
      :amount => 1,
      :price => 1
    ))
  end

  it "renders the edit sale form" do
    render

    assert_select "form[action=?][method=?]", sale_path(@sale), "post" do

      assert_select "input#sale_product_barcode[name=?]", "sale[product_barcode]"

      assert_select "input#sale_provider_rut[name=?]", "sale[provider_rut]"

      assert_select "input#sale_amount[name=?]", "sale[amount]"

      assert_select "input#sale_price[name=?]", "sale[price]"
    end
  end
end
