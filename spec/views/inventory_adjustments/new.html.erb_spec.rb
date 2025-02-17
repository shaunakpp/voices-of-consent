require 'rails_helper'

RSpec.describe "inventory_adjustments/new", type: :view do
  before(:each) do
    assign(:inventory_adjustment, InventoryAdjustment.new(
      :inventory_tally => nil,
      :purchase => nil,
      :box_item => nil,
      :total_cost => 1,
      :adjustment_quantity => 1
    ))
  end

  it "renders new inventory_adjustment form" do
    render

    assert_select "form[action=?][method=?]", inventory_adjustments_path, "post" do

      assert_select "input[name=?]", "inventory_adjustment[inventory_tally_id]"

      assert_select "input[name=?]", "inventory_adjustment[purchase_id]"

      assert_select "input[name=?]", "inventory_adjustment[box_item_id]"

      assert_select "input[name=?]", "inventory_adjustment[total_cost]"

      assert_select "input[name=?]", "inventory_adjustment[adjustment_quantity]"
    end
  end
end
