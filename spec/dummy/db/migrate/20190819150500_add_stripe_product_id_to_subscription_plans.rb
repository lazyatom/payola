class AddStripeProductIdToSubscriptionPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :subscription_plans, :stripe_product_id, :string
    add_column :subscription_plan_without_interval_counts, :stripe_product_id, :string
  end
end
