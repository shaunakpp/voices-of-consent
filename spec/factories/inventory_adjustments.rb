FactoryBot.define do
  factory :inventory_adjustment do
    inventory_tally { nil }
    purchase { nil }
    box_item { nil }
    total_cost { 1 }
    adjustment_quantity { 1 }
  end
end
